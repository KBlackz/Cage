class Platform < ApplicationRecord
    has_many :events
    has_many :channels
    has_many :schedules, through: :events
    has_many :users, through: :channels

end
