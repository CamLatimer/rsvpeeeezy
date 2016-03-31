class Guest < ActiveRecord::Base
  # I feel like instead of a Guest Model, the events and users should have a joined table with a join Model
  # So instead of Guest Model, you might have an Attendance Model
  # The Attendance Model would then store two foregin keys: user_id and event_id

  # class Attendance < ActiveRecord::Base
    # belongs_to :event
    # belongs_to :user
  # end
  
  belongs_to :event
end
