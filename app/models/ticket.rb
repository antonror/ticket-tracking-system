class Ticket < ApplicationRecord
  belongs_to :supplier
  belongs_to :location
  belongs_to :event
end
