class Movie < ActiveRecord::Base
	include Paperclip::Glue
	has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :cover, :content_type => ["image/jpg", "image/jpeg", "image/png","image/gif"]  
	#validates_attachment_content_type :cover, :content_type => ['image/jpg','image/png', 'image/gif']
	validates :title, presence: true
	has_many :moviecharacters
	has_many :characters, through: :moviecharacters
	has_many :comments
	has_many :cinemamovies
	has_many :cinemas, through: :cinemamovies
end
