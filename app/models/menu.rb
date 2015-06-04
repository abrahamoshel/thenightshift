class Menu < ActiveRecord::Base
  has_many :menu_items
  has_many :items, through: :menu_items

  has_many :venue_menus
  has_many :venues, through: :venue_menus
end
