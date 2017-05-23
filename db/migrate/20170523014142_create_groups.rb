class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :Family
      t.string :Friends
      t.string :Business
      t.string :Chicago
      t.string :SpeedDial

      t.timestamps
    end
  end
end
