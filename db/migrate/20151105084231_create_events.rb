class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :timestart
      t.datetime :timeend
      t.text :description
      t.string :host

      t.timestamps null: false
    end
  end
end
