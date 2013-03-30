class Event < ActiveRecord::Base
  attr_accessible :name, :contact, :description, :latitude, :location, :longitude, :menu, :time, :user_id
  validates :name, :contact, :location, :time, :presence => true
end
