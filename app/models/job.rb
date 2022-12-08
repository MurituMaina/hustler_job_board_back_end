class Job < ApplicationRecord
  validates :company, :title, :description, presence: true
  belongs_to :recruiter
end
