require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#need Destory.all
# RATING = rand(1..5)

User.destroy_all 
Author.destroy_all

10.times do 
    User.create(name: Faker::Name.name)
end

20.times do 
    Author.create(name: Faker::Book.author)
end

10.times do 
    Genre.create(name: Faker::Book.genre)
end

20.times do
    Book.create(title: Faker::Book.title, author: Author.all.sample, genre: Genre.all.sample)
end

