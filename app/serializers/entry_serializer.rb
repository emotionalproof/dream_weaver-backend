class EntrySerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :description, :interpretation, :user_id
  belongs_to :user
end


class UserSerializer < ActiveModel::Serializer
  has_many :entries

  class EntrySerializer < ActiveModel::Serializer
    attributes :id, :date, :title, :description, :interpretation
  end
  
end