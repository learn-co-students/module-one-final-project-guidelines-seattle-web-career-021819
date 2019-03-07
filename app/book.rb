class Book < ActiveRecord::Base
	has_many :characters
end