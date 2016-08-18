class CreateGroupContacts < ActiveRecord::Migration
  def change
    create_table :group_contacts do |t|
      t.integer :contact_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
