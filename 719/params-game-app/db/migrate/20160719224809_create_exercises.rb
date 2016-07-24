class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4

      t.timestamps null: false
    end
  end
end
