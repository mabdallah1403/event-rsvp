class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User'
  has_many :rsvps, dependent: :destroy

  validates :title, presence: true
  validates :maximum_attendees, presence: true, numericality: { only_integer: true, greater_than: 0 }
end