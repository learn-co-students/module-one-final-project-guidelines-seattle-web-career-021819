class Character < ActiveRecord::Base
	belongs_to :house
	belongs_to :book
end