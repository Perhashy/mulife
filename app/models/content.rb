class Content < ApplicationRecord
  mount_uploader :music, AudioFileUploader

  validates :title, presence: true
  validates :music, presence: true

  belongs_to :user
end
