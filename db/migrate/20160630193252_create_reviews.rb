class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :author
      t.text :body
      t.references :jewel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
