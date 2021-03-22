class Magazine < ApplicationRecord
  def self.import(file)
    CSV.foreach(file, headers: true, col_sep: ';') do |row|
      Magazine.create!(
        title: row.fields[0],
        isbn: row.fields[1],
        authors: row.fields[2],
        published_at: row.fields[3],
      )
    end
  end
end
