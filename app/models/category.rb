class Category < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Category', :foreign_key => :parent_id
  scope :active, -> { where("active IS true") }	
  scope :main, -> { where("parent_id = 1") }
  scope :order, order("parent_id")

end
