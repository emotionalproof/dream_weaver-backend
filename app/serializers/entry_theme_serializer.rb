class EntryThemeSerializer < ActiveModel::Serializer
  attributes :id, :entry_id, :theme_id
  belongs_to :entry
  belongs_to :theme
end
