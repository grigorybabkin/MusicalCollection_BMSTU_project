class Composition < ApplicationRecord
    has_many :composition_lists
    has_many :artists, -> {distinct}, through: :composition_lists
    has_many :persons, -> {distinct}, through: :composition_lists
    has_many :albums, -> {distinct}, through: :composition_lists
    belongs_to :genre
    
    validates :name, :duration, :release_date, presence: true
end
