class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, :part_id, presence: true

  has_many :contents
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_contents, through: :likes, source: :content
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :part

  mount_uploader :image, ImageUploader
end
