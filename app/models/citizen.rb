class Citizen < ApplicationRecord

  has_one :address
  has_one_attached :picture

  # validates :birthday,
  #           format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "This format is required dd/mm/YYY" }


  scope :status, -> {where(status: true)}


  def self.show_age(date_of_birthday, date_today)
    dob = date_of_birthday
    now = date_today
    age = now.year - dob.year
    age -= 1 if now < dob + age.years
    age
  end



end
