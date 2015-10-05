class BibleStudy < ActiveRecord::Base
    has_many :comments
    belongs_to :newsfeed
end
