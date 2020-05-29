class AnswerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ID, :answer, :user_id, :question_id

  has_one :question
  has_one :user
end
