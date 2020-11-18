class AddPriceToIsland < ActiveRecord::Migration[6.0]
  def change
    add_column :islands, :price, :integer
  end
end
