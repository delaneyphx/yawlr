class Project < ActiveRecord::Base
	belongs_to :boat
	belongs_to :user
	validates :name, presence: true


end
