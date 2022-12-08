# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding"

Job.destroy_all
Recruiter.destroy_all

Recruiter.create(email: "vincentmaina0@gmail.com", password: "password")

10.times do
 Job.create(company: Faker::Company.name, title: Faker::Job.title, description: Faker::Lorem.paragraph, recruiter_id: Recruiter.first.id)

end




puts "done seeding"
