class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.integer :maxlev
      t.integer :minlev
      t.string :category1
      t.string :category2

      t.timestamps
    end
  end
end
