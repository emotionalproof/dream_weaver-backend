class User < ApplicationRecord
    has_many :entries
    has_many :entry_themes, through: :entries
end
