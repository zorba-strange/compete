class Competition < ApplicationRecord
  validates :title, :start_date, :end_date, :info, presence: true
  has_many :memeberships
  has_many :users, through: :memberships
end
