class Project < ActiveRecord::Base
	belongs_to :boat
	validates :name, presence: true

end
