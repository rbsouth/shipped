class Boat < ApplicationRecord
  belongs_to :user
  has_many :assignments
  has_many :jobs, through: :assignments
  has_one_attached :image

  scope :not_assigned, ->(job) {
  	if job.boat_ids.blank?
  		Boat.all
  	else
	  	where('id NOT IN (?)', job.boat_ids)
  	end
  }
end
