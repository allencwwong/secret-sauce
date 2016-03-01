class RenameCategoryIdtoPtAppId < ActiveRecord::Migration
  def change
    rename_column :categories, :category_id, :pt_application_id    
  end
end
