class Comment < ActiveRecord::Base
	validates :comment, presence: true 
	validates :movie_id, presence: true
	validates :notation, presence: true
	belongs_to :movie
	belongs_to :user
end
