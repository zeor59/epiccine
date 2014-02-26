class MovieCharacter < ActiveRecord::Base
	belongs_to :movie
	belongs_to :character

	#validates_inclusion_of :role, %w(1, 2, 3 4)
end
