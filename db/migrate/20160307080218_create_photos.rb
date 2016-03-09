class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :PhotoURL
      t.integer :ProductId

      t.timestamps null: false
    end
  end
end
