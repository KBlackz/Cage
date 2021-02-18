class Schedule < ApplicationRecord
  belongs_to :event
  belongs_to :fighter

  validates :event_id, uniqueness: {scope: :fighter_id, message: "Fighter already booked"}
end
