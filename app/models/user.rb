class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable 
  belongs_to :company, optional: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, omniauth_providers: [:google_oauth2]
  validates :first_name, presence: true
  validates  :last_name, presence: true
  validates  :address, presence: true
  validates  :password, presence: true
  validates  :email, presence: true
  validates  :city, presence: true
  validates  :state, presence: true
  validates  :cellphone, presence: true
end