class User < ActiveRecord::Base
  has_one :profile
  has_many :visits
  has_many :venues, through: :visits

  validates :email, presence: true
end
