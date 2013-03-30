class AddNewColumnToMyTable < ActiveRecord::Migration
  def self.up
    add_column :events, :name, :string
  end
end
