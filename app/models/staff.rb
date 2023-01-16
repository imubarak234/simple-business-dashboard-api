class Staff < ApplicationRecord

  belongs_to :user

  has_many :events
  has_many :invoices
  has_many :faqs

  validates :access_level, presence: true
end