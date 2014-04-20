class Category < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Category', :foreign_key => :parent_id
  scope :active, -> { where("active IS true") }	
  scope :main, -> { where("parent_id = 1") }
  scope :order, order("parent_id")

  def self.category_for_dropdown
  	categories = []
  	new_category = Category.new(id: 0, name: "New Category")
  	categories.push(new_category)
  	
  	Category.active.each do |c|
  		categories.push(c)
  	end
  	categories
  end
end
