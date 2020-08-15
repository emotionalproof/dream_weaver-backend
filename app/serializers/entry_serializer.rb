class EntrySerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :titleized_title, :description, :interpretation, :user_id, :created_at
  belongs_to :user
end


class UserSerializer < ActiveModel::Serializer
  has_many :entries

  class EntrySerializer < ActiveModel::Serializer
    attributes :id, :date, :title, :titleized_title, :description, :interpretation, :created_at
  end
  
end