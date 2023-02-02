class ArtistList < ApplicationRecord
    belongs_to :artist
    belongs_to :person
    
    validates :debut_year, presence: true
end
