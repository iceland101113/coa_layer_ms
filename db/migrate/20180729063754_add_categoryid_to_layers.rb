class AddCategoryidToLayers < ActiveRecord::Migration[5.1]
  def change
    add_column :layers, :category_id, :integer
  end
end
