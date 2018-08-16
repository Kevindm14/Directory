class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable 
  belongs_to :company, optional: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, omniauth_providers: [:google_oauth2, :facebook]
  validates :first_name, presence: true
  validates  :last_name, presence: true
  validates  :address, presence: true
  validates  :password, presence: true
  validates  :email, presence: true
  validates  :city, presence: true
  validates  :state, presence: true
  validates  :cellphone, presence: true

   def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do | user |
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.save!(:validate => false)
    end
  end 
end