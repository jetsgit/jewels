class CreateJewels < ActiveRecord::Migration
  def change
    create_table :jewels do |t|
      t.string :name
      t.text :description
      t.integer :shine
      t.decimal :price
      t.integer :rarity
      t.string :color
      t.integer :faces

      t.timestamps null: false
    end
  end
end
