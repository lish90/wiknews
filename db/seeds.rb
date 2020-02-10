# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#    example - Faker::Name.unique.name example 
require 'faker'



puts 'Cleaning articles...'
Restaurant.destroy_all
puts 'Creating 10 fake articles'
  10.times do 
    article = Article.new(
       title: Faker::Books::Dune.title,
        content: Faker::Books::Lovecraft.paragraphs(number: 2)
    )
    article.save!
  end 
puts 'Finished!'