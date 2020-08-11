class EntrySerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :interpretation, :user_id
  belongs_to :user
  has_many :entry_themes

  
end
