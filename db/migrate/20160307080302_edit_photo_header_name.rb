class EditPhotoHeaderName < ActiveRecord::Migration
  def change
    rename_column :photos,:ProductId,:product_id
    rename_column :photos,:PhotoURL,:photo_url
  end
end
