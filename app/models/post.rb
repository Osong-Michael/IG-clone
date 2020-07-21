class Post < ApplicationRecord
  default_scope { order created_at: :desc }
  mount_uploader :image, ImageUploader
  belongs_to :account
  has_many :likes
  has_many :comments

  before_create :set_active

  scope :active, -> { where(:active => true)}
  # Ex:- scope :active, -> {where(:active => true)}
  

  private

  def set_active
    self.active = true
  end
  
end
