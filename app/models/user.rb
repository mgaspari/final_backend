class User < ApplicationRecord
  has_secure_password
  has_many :user_deals
  has_many :deals, through: :user_deals
end
