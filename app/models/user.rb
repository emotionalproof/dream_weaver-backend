class User < ApplicationRecord
    has_many :entries
    has_many :entry_themes, through: :entries
    has_many :symbols
    has_many :dictionaries, through: :symbols
end
