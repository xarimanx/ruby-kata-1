# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

authors = Rails.root.join('data', 'authors.csv')
CSV.foreach(authors, headers: true, col_sep: ';') do |row|
  Author.create!(
    email: row.fields[0],
    firstname: row.fields[1],
    lastname: row.fields[2]
  )
end

books = Rails.root.join('data', 'books.csv')
Book.import(books)

magazines = Rails.root.join('data', 'magazines.csv')
Magazine.import(magazines)
