class Company < ApplicationRecord
    belongs_to :country
    has_many :music_storages
end
