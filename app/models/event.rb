class Event < ActiveRecord::Base
  extend SimpleCalendar
  has_calendar
  attr_accessible :name, :starts_at
end
