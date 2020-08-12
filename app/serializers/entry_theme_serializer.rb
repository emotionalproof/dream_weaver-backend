class EntryThemeSerializer < ActiveModel::Serializer
  attributes :id, :theme_id, :entry_id
  belongs_to :entry
  belongs_to :theme
end


class EntrySerializer < ActiveModel::Serializer
  has_many :entry_themes

  class EntryThemeSerializer < ActiveModel::Serializer
    attributes :id, :theme_id
  end
end


class ThemeSerializer < ActiveModel::Serializer
  has_many :entry_themes

  class EntryThemeSerializer < ActiveModel::Serializer
    attributes :id
  end
end