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
CSV.foreach(books, headers: true, col_sep: ';') do |row|
  Book.create!(
    title: row.fields[0],
    isbn: row.fields[1],
    authors: row.fields[2],
    description: row.fields[3]

  )
end

magazines = Rails.root.join('data', 'magazines.csv')
CSV.foreach(magazines, headers: true, col_sep: ';') do |row|
  Magazine.create!(
    title: row.fields[0],
    isbn: row.fields[1],
    authors: row.fields[2],
    published_at: row.fields[3],
  )
end
