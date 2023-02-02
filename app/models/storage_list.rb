class StorageList < ApplicationRecord
    belongs_to :album
    belongs_to :music_storage
    
    validates :production_year, presence: true
end
