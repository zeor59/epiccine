class Comment < ActiveRecord::Base
	validates :comment, presence: true 
	validates :movie_id, presence: true
	validates :notation, presence: true
	validates :notation, numericality: { only_integer: false, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
	belongs_to :movie
	belongs_to :user

	NOTES = [ 0, 1, 2, 3, 4, 5 ]
end
