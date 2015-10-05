class Newsfeed < ActiveRecord::Base
    has_many :announcements
    has_many :bible_studies
    has_many :prayer_requests
end
