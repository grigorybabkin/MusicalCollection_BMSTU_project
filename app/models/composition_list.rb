class CompositionList < ApplicationRecord
    belongs_to :album
    belongs_to :person
    belongs_to :artist
    belongs_to :composition
    
    validates :position_number, presence: true
end
