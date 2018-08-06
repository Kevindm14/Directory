class Company < ApplicationRecord
   validation :name, presence: true,
    :address, presence: true,
    :city, presence: true,
    :state, presence: true,
    :commercial_activity, presence: true,
    :cellphone, presence: true,
    :phone, presence: true,
end
