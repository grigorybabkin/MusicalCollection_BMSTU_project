class Label < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    belongs_to :country
    has_many :albums
    
    validates :name, :foundation_date, presence: true
end
