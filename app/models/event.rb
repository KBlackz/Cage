class Event < ApplicationRecord
  belongs_to :platform
  has_many :schedules
  has_many :fighters, through: :schedules
  has_one :main_event_fighter
end
