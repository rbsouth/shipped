class Job < ApplicationRecord
  belongs_to :user
  has_many :assignments
  has_many :boats, through: :assignments

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 25}
  validates :cost, presence: true, numericality: { only_integer: true }
  validates :containers_needed, presence: true, numericality: { only_integer: true }

  scope :not_assigned, ->(boat) {
  	if boat.job_ids.blank?
  		Job.all
  	else
	  	where('id NOT IN (?)', boat.job_ids)
  	end
  }
end
