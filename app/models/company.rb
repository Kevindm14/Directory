class Company < ApplicationRecord
   validates :name, presence: true, uniqueness: true
   validates :address, presence: true
   validates :city, presence: true
   validates :state, presence: true
   validates :commercial_activity, presence: true
   validates :cellphone, presence: true
   validates :phone, presence: true
end
