class Event < ActiveRecord::Base

  # If you made this a many to mang with users, it would look like the following:
  # belongs_to :user
  # has_many :attendances
  # has_many :users, through attendances

  has_many :guests
  belongs_to :user
end
