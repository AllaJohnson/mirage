class Vendor < ActiveRecord::Base
  has_many :vendor_products
  has_many :products, through: :vendor_products
  belongs_to :vendor_realrc,
             :conditions => ['type = ?', 'VendorRealrc']
end
