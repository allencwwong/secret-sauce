class RemovePtAppId < ActiveRecord::Migration
  def change
    remove_column :categories, :pt_application_id  
    add_column :pt_applications,:category_id,:integer  
  end
end
