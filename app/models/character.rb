class Character < ActiveRecord::Base
	validates :first_name, presence: true
	has_many :moviecharacters
	has_many :movies, through: :moviecharacters
end
