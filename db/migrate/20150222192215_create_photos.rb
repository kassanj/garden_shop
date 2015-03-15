class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :product, index: true
      t.string :url

      t.timestamps null: false
    end
    add_foreign_key :photos, :products
  end
end
