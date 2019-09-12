

# 100.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   email = Faker::Internet.email(name: "#{first_name}.#{last_name}")

#   Employee.create(
#                   first_name: first_name,
#                   last_name: last_name,
#                   email: email,
#                   ssn: Faker::Medical::SSN.ssn,
#                   birthdate: Faker::Date.between(from: 18.years.ago, to: 65.years.ago)
#                   )

# end

# employee_ids = Employee.all.pluck(:id)

# employee_ids.each do |id|
#   rand(0..3).times do
#     Address.create(
#                    address_1: Faker::Address.street_address,
#                    address_2: Faker::Address.secondary_address,
#                    city: Faker::Address.city,
#                    state: Faker::Address.state,
#                    zip: Faker::Address.zip,
#                    employee_id: id
#                    )
#   end
# end

