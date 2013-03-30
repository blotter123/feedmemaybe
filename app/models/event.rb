class Event < ActiveRecord::Base
  attr_accessible :contact, :description, :latitude, :location, :longitude, :menu, :time, :user_id
end
