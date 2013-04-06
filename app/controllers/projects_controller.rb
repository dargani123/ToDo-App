class ProjectsController < ApplicationController

	def index 
		@projects = Project.all
	end

	def show 
		@project = Project.find(params[:id])
	end  

	def new 
		@project = Project.new
		@project.team_id = params[:team_id]
	end 

	def create
		@project = Project.new(params[:project])
		if @project.save 
			redirect_to project_url(@project)
		else 
			render :new 
		end 
	end 

end
