class Channel < ApplicationRecord
  belongs_to :user
  belongs_to :platform
end
