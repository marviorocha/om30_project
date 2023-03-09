class People < ApplicationRecord

  has_one :address

  validates :birthday,
            format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "This format is required dd/mm/YYY" }

end
