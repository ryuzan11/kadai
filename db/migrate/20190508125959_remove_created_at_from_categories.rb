class RemoveCreatedAtFromCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :created_at, :datetime
  end
end
