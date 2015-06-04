class VenueMenu < ActiveRecord::Base
  belongs_to :venue
  belongs_to :menu
end
