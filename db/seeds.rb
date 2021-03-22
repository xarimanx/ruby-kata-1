# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

authors = Rails.root.join('data', 'authors.csv')
CSV.foreach(authors, headers: true) do |row|
  Moulding.create!(row.to_hash)
end

books = Rails.root.join('data', 'books.csv')
CSV.foreach(books, headers: true) do |row|
  Moulding.create!(row.to_hash)
end

magazines = Rails.root.join('data', 'magazines.csv')
CSV.foreach(magazines, headers: true) do |row|
  Moulding.create!(row.to_hash)
end
