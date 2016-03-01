class RemovePtId < ActiveRecord::Migration
  def change
    remove_column :categories, :pt_application_id
  end
end
