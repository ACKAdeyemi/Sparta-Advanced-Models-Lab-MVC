class UpdateDob < ActiveRecord::Migration[5.2]
  def change
    remove_column :authors, :d_of_b
    add_column :authors, :dob, :string
  end
end
