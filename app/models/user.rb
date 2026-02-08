class User < ApplicationRecord
  has_many :organized_events, 
  class_name: 'Event',
  foreign_key: 'organizer_id'
  
  validates :name, presence: true
  validates :password_hash, presence: true
end
