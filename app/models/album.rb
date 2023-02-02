class Album < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    has_many :composition_lists
    has_many :storage_lists
    has_many :music_storages, -> {distinct}, through: :storage_lists
    has_many :artists, -> {distinct}, through: :composition_lists
    has_many :persons, -> {distinct}, through: :composition_lists
    has_many :compositions, -> {distinct}, through: :composition_lists
    belongs_to :album_type
    belongs_to :label
    
    validates :name, :release_date, presence: true
end
