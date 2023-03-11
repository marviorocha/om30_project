class Citizen < ApplicationRecord

  has_one :address
  has_one_attached :picture

  # validates :birthday,
  #           format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "This format is required dd/mm/YYY" }


  scope :status, -> {where(status: true)}



end
