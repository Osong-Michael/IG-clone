class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :account

  validates_uniqueness_of :comment
  validates :comment, presence: true
  # validates_uniqueness_of :account_id
  # validates_uniqueness_of :post_id
end
