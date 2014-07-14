class CreateVendorRealrcs < ActiveRecord::Migration
  def change
    create_table :vendor_realrcs do |t|

      t.timestamps
    end
  end
end
