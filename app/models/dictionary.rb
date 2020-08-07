class Dictionary < ApplicationRecord
    has_many :symbols
    has_many :users, through: :symbols
end
