class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :prototypes, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, presence: true
  validates :occupation, presence: true
  validates :profile, presence: true
  validates :position, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
