class ProjectsController < ApplicationController
	def create
		@boat = Boat.find(params[:boat_id])
		@project = @boat.projects.create(params[:project].permit(:name, :description, :budget))
		redirect_to boat_path(@boat)

	end
end
