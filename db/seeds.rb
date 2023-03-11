# This import SQL was make thought this link
# https://gist.github.com/seyhunak/7843549
# Thank you @seyhunak

unless Rails.env.production?
  connection = ActiveRecord::Base.connection


  sql = File.read('db/import.sql')
  statements = sql.split(/;$/)
  statements.pop

  ActiveRecord::Base.transaction do
    statements.each do |statement|
      connection.execute(statement)
    end
    puts 'SQL was imported with successful!'
  end

end

Faker::Config.locale = 'pt-BR'

10.times do
  Citizen.create(
    full_name: Faker::Name.name,
    email: Faker::Internet.free_email,
    cpf: Faker::IDNumber.brazilian_citizen_number,
    cns: Faker::Number.number(digits: 15),
    date_of_birth: Faker::Date.birthday(min_age: 1, max_age: 122),
    phone: Faker::PhoneNumber.cell_phone,
    status: rand(1..2)
    )
end

10.times do |index|
  Address.create(
    zip: Faker::Address.zip_code,
    address: Faker::Address.street_address,
    district: Faker::Address.community,
    city: Faker::Address.city,
    state: Faker::Address.state,
    ibge_code: Faker::Number.number(digits: 6),
    citizen_id: index
  )
end
