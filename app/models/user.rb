class User < ApplicationRecord
    has_many :channels 
    has_many :platforms, through: :channels
end
