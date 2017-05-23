# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do

first_name = Faker::Name.first_name
last_name = Faker::Name.last_name


Contact.create(
              first_name: first_name
              last_name: last_name
              email: Faker::Internet.free_email("#{first_name} #{last_name}"),
              phone_number: Faker::PhoneNumber.phone_number
              )
end

Group.create!(name: "family")
Group.create!(name: "friend")
Group.create!(name: "business")
Group.create!(name: "Chicago")
Group.create!(name: "SpeedDial")
Group.create!(name: "test")

contact_ids = Contact.pluck(:id)
group_ids = Group.pluck(:id)

contact_ids.each do |c_id|
  selected_group_ids = group_ids.sampls(rand(1..3))
  
  selected_group_ids.each do |g_id|
    GroupContact.create!(contact_id: c_id, group_id: g_id) 
  end
end