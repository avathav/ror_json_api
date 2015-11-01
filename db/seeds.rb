# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SEEDING USERS: '
[
    {:email => 'admin@example.com', :encrypted_password => 'admin@example.com', :role => User.roles[:admin]},
    {:email => 'user@example.com', :encrypted_password => 'user@example.com', :role => User.roles[:user]}
].each { |user|
  new_user = User.new(user)
  new_user.save!(validate: false)
}