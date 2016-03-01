class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :product_id
      t.string :make
      t.string :model
      t.string :year
      t.string :model
      t.text :note
      t.string :catrgory

      t.timestamps null: false
    end
  end
end
