class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :password, :confirm_password
  has_many :entries
end
