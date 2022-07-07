class User < ApplicationRecord

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }

  validates :nickname, presence: true
  validates :last_name, format: { with: /\A([ぁ-ゔァ-ヴ一-龥々]|ー)+\z/ }, presence: true
  validates :first_name, format: { with: /\A([ぁ-ゔァ-ヴ一-龥々]|ー)+\z/ }, presence: true
  validates :last_name_kana, format: { with: /\A[ァ-ヴー]+\z/ }, presence: true
  validates :first_name_kana, format: { with: /\A[ァ-ヴー]+\z/ }, presence: true
  validates :birthday, presence: true
 
  has_many :items
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
