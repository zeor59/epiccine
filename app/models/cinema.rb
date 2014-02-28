class Cinema < ActiveRecord::Base
    has_many :cinemamovies
    has_many :movies, through: :cinemamovies
end
