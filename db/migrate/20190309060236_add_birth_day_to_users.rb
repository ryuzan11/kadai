class AddBirthDayToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :birth_day, :integer, null: false
  end
end