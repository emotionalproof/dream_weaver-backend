class ThemeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :entry_themes
end
