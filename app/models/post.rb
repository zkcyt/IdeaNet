class Post < ApplicationRecord
  #belongs_to :user
  belongs_to :user

  validates :title, :summary, :content, presence: {message:'は、必須項目です。'}
end
