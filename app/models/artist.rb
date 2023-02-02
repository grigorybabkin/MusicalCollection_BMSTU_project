class Artist < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    has_many :artist_lists
    has_many :composition_lists
    has_many :people, -> {distinct}, through: :artist_lists
    has_many :compositions, -> {distinct}, through: :composition_lists
    has_many :albums, -> {distinct}, through: :composition_lists
    
    validates :name, presence: true
end
