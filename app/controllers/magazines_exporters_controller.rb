require 'csv'

class MagazinesExportersController < ApplicationController
  def show
    FileUtils.mkdir_p Rails.root.join('tmp', 'csvs')
    file = Rails.root.join('tmp', 'csvs', "magazines-#{Date.current}.csv")
    CSV.open(file, 'wb', headers: true, col_sep: ';') do |csv|
      csv << [
        'title',
        'isbn',
        'authors',
        'publishedAt',
      ]

      Magazine.all.each do |magazine|
        csv << [
          magazine.title,
          magazine.isbn,
          magazine.authors,
          magazine.published_at
        ]
      end
    end
    send_file file
  end
end
