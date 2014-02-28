class CinemaMovie < ActiveRecord::Base
	belongs_to :movie
	belongs_to :cinema
end
