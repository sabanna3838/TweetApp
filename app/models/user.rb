class User < ApplicationRecord
  has_secure_password
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}

  has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy

  has_many :following_user, through: :follower, source: :followed
  has_many :follower_user, through: :followed, source: :follower
  
  def posts
    return Post.where(user_id: self.id)
  end

  #フォローする
  def follow(user_id)
    follower.create(followed_id: user_id)
  end

  #フォロー外す
  def unfollow(user_id)
    follower.find_by(followed_id: user_id).destroy
  end

  #フォローしているか？
  def following?(user)
    following_user.include?(user)
  end
end
