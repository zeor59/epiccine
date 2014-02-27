class Character < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :biography, presence: true
	validates :picture, presence: true
	validates :birthday, presence: true
	has_many :movie_characters
	has_many :movies, through: :movie_characters
end
