class User < ApplicationRecord
  validation :first_name, presence: true,
    :last_name, presence: true,
    :address, presence: true,
    :password, presence: true,
    :email, presence: true,
    :city, presence: true,
    :state, presence: true,
    :cellphone, presence: true,
    :phone, presence: true,
    :company, presence: true,
end