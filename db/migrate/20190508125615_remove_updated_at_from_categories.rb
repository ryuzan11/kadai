class RemoveUpdatedAtFromCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :Updated_at, :datetime
  end
end
