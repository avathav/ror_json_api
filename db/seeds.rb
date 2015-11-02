# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'RESETING TABLES'
Api::V1::BlogEntry.destroy_all
Api::V1::Blog.destroy_all
User.destroy_all

puts 'SEEDING USERS: '
[
    {:email => 'admin@example.com', :encrypted_password => 'admin@example.com', :role => User.roles[:admin]},
    {:email => 'user@example.com', :encrypted_password => 'user@example.com', :role => User.roles[:user]}
].each { |user|
  new_user = User.new(user)
  new_user.save!(validate: false)
}
puts 'SEEDING BLOGS: '

User.all.each { |user|
  blog = Api::V1::Blog.new :title => "#{user} blog", :decrtiption => Faker::Lorem.sentences.join(' '), :is_visible =>true
  (1..10).each {
    blog.blog_entries.build(:title => Faker::Company.name, :content => Faker::Lorem.sentences.join(' '), :is_visible =>true)
  }
  blog.save!(validate: false)
}
