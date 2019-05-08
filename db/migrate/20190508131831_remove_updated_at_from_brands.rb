class RemoveUpdatedAtFromBrands < ActiveRecord::Migration[5.0]
  def change
    remove_column :brands, :updated_at, :datetime
  end
end
