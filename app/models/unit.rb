class Unit < ActiveRecord::Base
	scope :active, -> { where("active IS true") }	
end
