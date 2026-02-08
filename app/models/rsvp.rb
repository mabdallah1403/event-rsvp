module RsvpStatus
    ATTENDING = "attending"
    WAITLIST = "waitlist"
    CANNOT_ATTEND = "cannot_attend"
end

class Rsvp < ApplicationRecord
  belongs_to :event
  
  validates :attendee_name, presence: true
  validates :number_attending, 
  presence: true,
  numericality: { only_integer: true, greater_than: 0 }
  validates :rsvp_status, presence: true, inclusion: { in: [RsvpStatus::ATTENDING, RsvpStatus::WAITLIST, RsvpStatus::CANNOT_ATTEND] }
  validates :date_registered, presence: true
end