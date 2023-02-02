class Country < ApplicationRecord
    has_many :companies
    has_many :people
    has_many :labels
end
