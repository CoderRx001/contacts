class CreateGroupContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :group_contacts do |t|
      t.integer :GroupId
      t.integer :ContactId

      t.timestamps
    end
  end
end
