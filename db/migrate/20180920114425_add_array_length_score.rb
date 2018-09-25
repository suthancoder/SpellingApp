class AddArrayLengthScore < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :words_list, :string, array: true, default: []
    add_column :tests, :length, :integer
    add_column :tests, :score, :integer
  end
end
