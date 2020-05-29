class Question < ApplicationRecord
    validates :label, presence: true
    validates :active, inclusion: { in: [ true, false ] }

    has_many :answers
end
