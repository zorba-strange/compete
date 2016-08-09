class User < ApplicationRecord
  has_many :memeberships
  has_many :competitions, through: :memberships
end
