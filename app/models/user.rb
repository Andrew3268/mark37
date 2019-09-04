class User < ApplicationRecord
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites
  has_many :posts 
  has_many :buys
  has_many :comments, dependent: :destroy

  def username
    return email.split('@')[0].capitalize
  end
end
