class RenamePhotoProductIdToCat < ActiveRecord::Migration
  def change
    rename_column :photos,:product_id,:category_id
  end
end
