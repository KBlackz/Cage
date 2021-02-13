class Schedule < ApplicationRecord
  belongs_to :event
  belongs_to :fighter
end
