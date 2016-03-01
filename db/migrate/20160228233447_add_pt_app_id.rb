class AddPtAppId < ActiveRecord::Migration
  def change
    add_column :categories,:pt_application_id,:integer
  end
end
