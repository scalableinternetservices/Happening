class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :timestart
      t.datetime :timeend
      t.text :description
      t.string :host
      t.references :user, index: true
    end
    add_foreign_key :events, :users
  end
end
