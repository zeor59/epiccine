class MovieCharacter < ActiveRecord::Base
	validates :movie, presence: true
	validates :character, presence: true
	validates :role, presence: true
	belongs_to :movie
	belongs_to :character

	ROLES = { 0 => 'Realisateur', 1 => 'Acteur' }
end
