require 'csv'

class BooksExportersController < ApplicationController
  def show
    FileUtils.mkdir_p Rails.root.join('tmp', 'csvs')
    file = Rails.root.join('tmp', 'csvs', "export-#{Date.current}.csv")
    CSV.open(file, 'wb', headers: true, col_sep: ';') do |csv|
      csv << [
        'title',
        'isbn',
        'authors',
        'description',
      ]

      Book.all.each do |book|
        csv << [
          book.title,
          book.isbn,
          book.authors,
          book.description
        ]
      end
    end
    send_file file
  end
end
