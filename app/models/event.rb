class Event < ApplicationRecord
  belongs_to :location
  has_many :tickets
  has_and_belongs_to_many :performers
end
