class RemoveNumberOfPeopleFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :field_name, :number_of_people
  end
end
