class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :contact
      t.float :latitude
      t.string :location
      t.float :longitude
      t.string :menu
      t.string :description
      t.datetime :time
      t.integer :user_id

      t.timestamps
    end
    add_index :events, [:user_id, :created_at]
  end
end
