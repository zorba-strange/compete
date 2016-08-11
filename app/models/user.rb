class User < ApplicationRecord
  has_many :memberships
  has_many :competitions, through: :memberships
end
