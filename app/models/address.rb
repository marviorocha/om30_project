class Address < ApplicationRecord
  belongs_to :citizen

  validates :zipcode, presence: true,
            format: { with: /\A\d{5}-\d{3}\z/,
                      message: "Campo CEP está com formato inválido!" }
  validates :street, presence: true
  validates :district, presence: true
  validates :city, presence: true
  validates :state, presence: true


end
