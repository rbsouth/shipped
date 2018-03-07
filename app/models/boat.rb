class Boat < ApplicationRecord
  belongs_to :user
  has_many :assignments, dependent: :destroy
  has_many :jobs, through: :assignments
  has_one_attached :image

  validates :name, presence: true, uniqueness: true
  validates :container_capacity, presence: true, numericality: { only_integer: true, greater_than: 1 }

  scope :not_assigned, ->(job) {
  	if job.boat_ids.blank?
  		Boat.all
  	else
	  	where('id NOT IN (?)', job.boat_ids)
  	end
  }
end
