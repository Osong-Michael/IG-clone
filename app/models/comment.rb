class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :account

  validates_uniqueness_of :comment
  validates :comment, presence: true
  # validates_uniqueness_of :account_id
  # validates_uniqueness_of :post_id
  attr_accessor :return_to

  after_create :increase_post_comment_counter
  after_destroy :decrease_post_comment_counter

  private 

  def increase_post_comment_counter
    Post.find(self.post_id).increment(:total_comments_count).save
  end

  def decrease_post_comment_counter
    Post.find(self.post_id).decrement(:total_comments_count).save
  end
end
