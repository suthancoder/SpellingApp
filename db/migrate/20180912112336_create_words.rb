class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :word
      t.string :sentence
      t.integer :diflev
      t.string :category1
      t.string :category2

      t.timestamps
    end
  end
end
