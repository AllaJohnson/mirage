class CreateVendorProducts < ActiveRecord::Migration
  def change
    create_table :vendor_products do |t|
      t.integer :vendor_id
      t.integer :product_id

      t.timestamps
    end
    add_index :vendor_products, :vendor_id
    add_index :vendor_products, :product_id
  end
end
