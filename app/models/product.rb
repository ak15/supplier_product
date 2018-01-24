class Product < ActiveRecord::Base
  has_many :supplier_products
  has_many :supplier, through: :supplier_products

  enum status: { active: 0, inactive: 1}


  def self.active
    where(status: Product.statuses[:active])
  end

  def self.inactive
    where(status: Product.statuses[:inactive])
  end
end
