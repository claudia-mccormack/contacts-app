class LatituteAndLongitude < ActiveRecord::Migration
  def change
    add_column :contacts, :latitude, :float #Forgot precision and scale!
    add_column :contacts, :longitude, :float
  end
end
