class EntryTheme < ApplicationRecord
  belongs_to :theme
  belongs_to :entry
end
