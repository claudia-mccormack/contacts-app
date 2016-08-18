class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.text :description
      t.integer :year_built
      t.integer :square_feet
      t.integer :bedrooms
      t.decimal :bathrooms
      t.integeravailability :floors
      t.decimal :price

      t.timestamps null: false
    end
  end
end
