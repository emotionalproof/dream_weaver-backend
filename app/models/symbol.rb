class Symbol < ApplicationRecord
  belongs_to :dictionary
  belongs_to :user
  validates_associated :user, allow_nil: true
end
