class Movie < ActiveRecord::Base
	has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
	validates :title, presence: true
	has_many :moviecharacters
	has_many :characters, through: :moviecharacters
	has_many :comments
end
