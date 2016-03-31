class User < ActiveRecord::Base
  # If you made this a many to mang with events, it would look like the following:
  # has_many :events
  # has_many :attendances
  # has_many :registered_events, through attendances, source: event, class_name: "Event"
  
  has_many :events
end
