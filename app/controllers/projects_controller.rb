class ProjectsController < ApplicationController
	  before_action :set_project, only: [:show, :edit, :update, :destroy]
	  helper :projects

	def index
	  	@boat = Boat.find(params[:boat_id])
		@projects = @boat.projects.paginate(:page => params[:page], :per_page => 5)
	end

	def create
		@boat = Boat.find(params[:boat_id])
		@project = @boat.projects.create(project_params)
		if @project.save
		flash[:notice] = "Sweet, the project has been added to your maintenance log!"
		redirect_to boat_path(@boat)
		else
		flash[:alert] = "You broke it!"
		redirect_to boat_path(@boat)
		end 
	end

	def show
		@boat = Boat.find(params[:boat_id]) 
	end

	def edit
		@boat = Boat.find(params[:boat_id]) 
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
