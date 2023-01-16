class Faq < ApplicationRecord

  belongs_to :staff

  validates :question, presence: true
end