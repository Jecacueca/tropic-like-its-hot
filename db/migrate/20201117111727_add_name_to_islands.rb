class AddNameToIslands < ActiveRecord::Migration[6.0]
  def change
    add_column :islands, :name, :string
  end
end
