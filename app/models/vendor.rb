class Vendor < ActiveRecord::Base
  has_many :vendor_products
  has_many :products, through: :vendor_products
end
