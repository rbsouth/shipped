class Job < ApplicationRecord
  belongs_to :user
  has_many :assignments
  has_many :boats, through: :assignments

  scope :not_assigned, ->(boat) {
  	if boat.job_ids.blank?
  		Job.all
  	else
	  	where('id NOT IN (?)', boat.job_ids)
  	end
  }
end
