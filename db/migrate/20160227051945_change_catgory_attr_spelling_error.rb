class ChangeCatgoryAttrSpellingError < ActiveRecord::Migration
  def change
    rename_column :pt_applications, :catrgory, :category
  end
end
