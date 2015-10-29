class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :time
      t.string :location
      t.string :owner

      t.timestamps null: false
    end
  end
end
