class RenameTableApplication < ActiveRecord::Migration
  def change
     rename_table :applications, :pt_applications
  end
end
