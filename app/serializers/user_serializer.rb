class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ID, :name, :email

  has_many :answers
end
