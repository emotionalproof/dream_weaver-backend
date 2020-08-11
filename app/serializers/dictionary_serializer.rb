class DictionarySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :dream_symbols
end


class DreamSymbolSerializer < ActiveModel::Serializer
  belongs_to :dictionary

  class DictionarySerializer < ActiveModel::Serializer
    attributes 
  end

end
