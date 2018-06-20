class CorrectSpelling < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :publihed_year
    add_column :books, :published_year, :string
  end
end
