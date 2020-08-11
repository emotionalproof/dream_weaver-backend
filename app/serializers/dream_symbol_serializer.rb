class DreamSymbolSerializer < ActiveModel::Serializer
  attributes :id, :name, :meaning, :dictionary_id
  # belongs_to :dictionary
end


# class DictionarySerializer < ActiveModel::Serializer
#   has_many :dream_symbols

#   class DreamSymbolSerializer < ActiveModel::Serializer
#     attributes :id, :name, :meaning
#   end

# end
