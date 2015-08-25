# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@departments = ["Sales", "Marketing", "Technical"];

20.times do 
  @pickone = @departments.sample
  Request.create(name: Faker::Hacker.say_something_smart, email: Faker::Internet.email, department: @pickone , message: Faker::Lorem.paragraphs)
end

