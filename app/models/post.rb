class Post < ApplicationRecord
  #belongs_to :user
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user

  validates :title, :summary, :content, presence: {message:'は、必須項目です。'}

  scope :recent, -> (count = 10){ order('created_at desc').limit(count) }
end
