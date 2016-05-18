class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  validates_uniqueness_of :email
  validates :password, presence: true, confirmation: true

  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
end
