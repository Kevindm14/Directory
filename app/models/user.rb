class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true
  validates  :last_name, presence: true
  validates  :address, presence: true
  validates  :password, presence: true
  validates  :email, presence: true
  validates  :city, presence: true
  validates  :state, presence: true
  validates  :cellphone, presence: true
  validates  :phone, presence: true
  validates  :company, presence: true
end