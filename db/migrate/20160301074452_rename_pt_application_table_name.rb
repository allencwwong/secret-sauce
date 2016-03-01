class RenamePtApplicationTableName < ActiveRecord::Migration
  def change
    rename_table :pt_applications,:products
  end
end
