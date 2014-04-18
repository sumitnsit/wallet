class Product < ActiveRecord::Base
	belongs_to :unit
	belongs_to :category
	belongs_to :payee
	belongs_to :shopping
end
