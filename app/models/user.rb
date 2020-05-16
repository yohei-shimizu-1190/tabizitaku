class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true
  has_many :photos

  def self.guest
    find_or_create_by!(email: 'guest@example.com', nickname: 'TestUser') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
