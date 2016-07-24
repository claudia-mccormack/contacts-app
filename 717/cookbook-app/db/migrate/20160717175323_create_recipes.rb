class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :ingredients
      t.string :directions
      t.string :title
      t.string :image
      t.string :author
      t.integer :prep_time

      t.timestamps null: false
    end
  end
end
