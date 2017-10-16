class Question < ApplicationRecord
  has_many :choices
  belongs_to :test
end
