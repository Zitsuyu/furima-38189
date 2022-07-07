class User < ApplicationRecord

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: 'include both letters and numbers in half-width characters'}

  validates :nickname, presence: true
  validates :last_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }, presence: true
  validates :first_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }, presence: true
  validates :last_name_kana, format: { with: /\A[ァ-ヶー]+\z/ }, presence: true
  validates :first_name_kana, format: { with: /\A[ァ-ヶー]+\z/ }, presence: true
  validates :birthday, presence: true
 
  has_many :items
  # has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
