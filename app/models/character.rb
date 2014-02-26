class Character < ActiveRecord::Base
	has_many :moviecharacters
	has_many :movies, through: :moviecharacters
end
