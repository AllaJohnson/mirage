class Product < ActiveRecord::Base
  has_many :vendor_products
  has_many :vendors, through: :vendor_products
end
