class AddMiddleNameAndBio < ActiveRecord::Migration
  def change
    add_column :contacts, :middle, :string
    add_column :contacts, :bio, :text
  end
end
