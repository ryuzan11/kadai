class RemoveCreatedAtFromBrands < ActiveRecord::Migration[5.0]
  def change
    remove_column :brands, :created_at, :datetime
  end
end
