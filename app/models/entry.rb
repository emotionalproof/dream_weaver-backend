class Entry < ApplicationRecord
  belongs_to :user
  has_many :entry_themes
  has_many :themes, through: :entry_themes

  def titleized_title
    return self.title.titleize
  end
end
