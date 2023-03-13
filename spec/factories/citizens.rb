FactoryBot.define do
  factory :citizen do
      full_name {Faker::Name.name}
      email {Faker::Internet.free_email}
      cpf {Faker::IDNumber.brazilian_citizen_number}
      cns {Faker::Number.number(digits: 15)}
      date_of_birth {Faker::Date.birthday(min_age: 1, max_age: 122)}
      phone {Faker::PhoneNumber.cell_phone}
      status {rand(1..2)}
      address
  end
end
