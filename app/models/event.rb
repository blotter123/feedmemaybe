class Event < ActiveRecord::Base
  attr_accessible :name, :contact, :description, :latitude, :location, :longitude, :menu, :time, :user_id
  validates :name, :contact, :location, :time, :user_id , :presence=> true

  default_scope order: 'events.created_at DESC'
end
