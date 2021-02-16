class MainEventFighter < ApplicationRecord 
    belongs_to :first_fighter, class_name: "Fighter"
    belongs_to :second_fighter, class_name: "Fighter"
    belongs_to :event
end
