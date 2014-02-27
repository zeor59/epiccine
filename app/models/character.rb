class Character < ActiveRecord::Base
	has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :biography, presence: true
	validates :picture, presence: true
	validates :birthday, presence: true
	has_many :movie_characters
	has_many :movies, through: :movie_characters
end
