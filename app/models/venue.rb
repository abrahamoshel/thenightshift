class Venue < ActiveRecord::Base
  has_many :visits
  has_many :users, through: :visits

  has_many :venue_menus
  has_many :menus, through: :venue_menus
end
