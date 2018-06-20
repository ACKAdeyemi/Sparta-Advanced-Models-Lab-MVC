class AddChapteridToParagraph < ActiveRecord::Migration[5.2]
  def change
    add_column :paragraphs, :chapter_id, :integer
  end
end
