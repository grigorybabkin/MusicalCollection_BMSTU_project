class MusicStorage < ApplicationRecord
    has_many :storage_lists
    has_many :albums, -> {distinct}, through: :storage_lists
    belongs_to :company
    belongs_to :storage_type
    
    validates :name, :rack, :shelf, :section, :cell, presence: true
end
