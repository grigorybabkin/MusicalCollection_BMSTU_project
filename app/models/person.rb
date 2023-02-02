class Person < ApplicationRecord
    mount_uploader :avatar, AvatarUploader    
    has_many :artist_lists
    has_many :composition_lists
    has_many :artists, -> {distinct}, through: :artist_lists
    has_many :compositions, -> {distinct}, through: :composition_lists
    belongs_to :country
    
    validates :first_name, :last_name, :birth_date, :country_id, presence: true
end
