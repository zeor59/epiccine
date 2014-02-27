class Movie < ActiveRecord::Base
	validates :title, presence: true
	has_many :moviecharacters
	has_many :characters, through: :moviecharacters
	has_many :comments
end
