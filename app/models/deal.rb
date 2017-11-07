class Deal < ApplicationRecord
  has_many :user_deals
  has_many :users, through: :user_deals
  belongs_to :admin
end
