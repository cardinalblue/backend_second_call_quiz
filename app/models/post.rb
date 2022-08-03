class Post < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :comments, dependent: :destroy
end
