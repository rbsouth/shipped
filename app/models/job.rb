class Job < ApplicationRecord
  belongs_to :user
  has_many :assignments, dependent: :destroy
  has_many :boats, through: :assignments

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 50}
  validates :cost, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1000 }
  validates :containers_needed, presence: true, numericality: { only_integer: true }

  scope :not_assigned, ->(boat) {
  	if boat.job_ids.blank?
  		Job.all
  	else
	  	where('id NOT IN (?)', boat.job_ids)
  	end
  }
end
