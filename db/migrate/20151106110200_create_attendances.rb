class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :guest_id
      t.integer :occasion_id

      t.timestamps null: false
    end
    add_index :attendances, :guest_id
    add_index :attendances, :occasion_id
    add_index :attendances, [:guest_id, :occasion_id], unique: true
  end
end
