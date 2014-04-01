class Product < ActiveRecord::Base
	has_many :lineitems
	has_many :orders, :through => :lineitems
	validates :name, :price, :stock_quantity, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :stock_quantity, numericality: {only_integer: true}
end
