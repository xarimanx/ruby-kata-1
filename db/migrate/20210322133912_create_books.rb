class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :authors
      t.text :description

      t.timestamps
    end
  end
end
