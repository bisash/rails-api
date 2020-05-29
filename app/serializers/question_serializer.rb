class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ID, :label, :active

  has_many :answers
end
