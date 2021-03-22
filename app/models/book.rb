class Book < ApplicationRecord
  def self.import(file)
    CSV.foreach(file, headers: true, col_sep: ';') do |row|
      Book.create!(
        title: row.fields[0],
        isbn: row.fields[1],
        authors: row.fields[2],
        description: row.fields[3]
      )
    end
  end
end
