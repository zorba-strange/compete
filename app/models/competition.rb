class Competition < ApplicationRecord
  has_many :memeberships
  has_many :users, through: :memberships
end
