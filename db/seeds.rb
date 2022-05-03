# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  user = User.new(
    fullname: "User ABV #{rand(1..100_000_000)}",
    age: rand(18..30),
    job_name: 'Programer'
  )
  user.save!

  Skill.create(
    user_id: user.id,
    title: "Skill #{rand(1..100_000)}",
    point: rand(1..100)
  )
end
