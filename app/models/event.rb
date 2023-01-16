class Event < ApplicationRecord

  belongs_to :staff

  validates :title, presence: true
  validates :date, presence: true
end