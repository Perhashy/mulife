class Content < ApplicationRecord
  mount_uploader :music, AudioFileUploader

  validates :title, presence: true
  validates :music, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  acts_as_taggable

end
