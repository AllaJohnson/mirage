class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :price
      t.boolean :availability
      t.integer :vendor_product_id

      t.timestamps
    end
    add_index :prices, :vendor_product_id
  end
end
