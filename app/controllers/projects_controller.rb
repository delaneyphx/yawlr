class ProjectsController < ApplicationController
	  before_action :set_project, only: [:show, :edit, :update, :destroy]
	
	def create
		@boat = Boat.find(params[:boat_id])
		@project = @boat.projects.create(project_params)
		if @project.save
		redirect_to boat_path(@boat)
		else
			flash[:notice] = "You broke it!"
		redirect_to boat_path(@boat)
	end
	end

	def show
		@boat = Boat.find(params[:boat_id]) 
	end

	def edit
	end

	def update

	end

	private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :description, :budget, :id, :status, :created_at)
    end
end
