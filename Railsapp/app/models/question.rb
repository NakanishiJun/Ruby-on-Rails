class Question < ApplicationRecord
  has_many :answer

  validates :content, :name, preence:{message:'は必須項目です。'}
end
