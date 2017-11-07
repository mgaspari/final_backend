class Admin < ApplicationRecord
  has_secure_password
  has_many :deals
  has_many :user_deals, through: :deals

end
