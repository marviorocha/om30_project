class Citizen < ApplicationRecord

  has_one :address
  has_one_attached :picture do |size|
    size.variant :thumb, resize: "120x120"
    size.variant :medium, resize: "600x600"
  end

  accepts_nested_attributes_for :address

  after_create :send_welcome

  validates :full_name, presence: true
  validates :phone, presence: true
  validates :cpf, presence: true,
            uniqueness: true,
            format: { with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/,
                      message: "O campo CPF é inválido!" }
  validates :date_of_birth,
            presence: true,
            format: { with: /\A\d{4}-\d{2}-\d{2}\z/,
                      message: "O campo data de nascimento é inválido" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  scope :status, -> { where(status: true) }

  def self.show_age(date_of_birthday, date_today)
    dob = date_of_birthday
    now = date_today
    age = now.year - dob.year
    age -= 1 if now < dob + age.years
    age
  end

  private

  def send_welcome
    CitizenMailer.welcome_email(self).deliver_now
  end

end
