class Invoice < ApplicationRecord

  belongs_to :user
  belongs_to :staff

  validates :cost, presence: true
  validates :date, presence: true
end