class Shopping < ActiveRecord::Base
  has_many :products
  belongs_to :account
  accepts_nested_attributes_for :products, allow_destroy: true
end
