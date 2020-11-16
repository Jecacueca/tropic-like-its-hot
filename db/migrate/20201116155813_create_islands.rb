class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :address
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
