class ItemsController < ApplicationController
	def show 
		@item = Item.find(params[:id])
	end 

	def new 
		@item = Item.new
		@item.project_id = params[:project_id]
	end 

	def create
		@item = Item.new(params[:item])
		if @item.save 
			redirect_to project_url(Project.find(@item.project_id))
		else 
			render :new 
		end 
	end

	def edit 
		@item = Item.find(params[:id])
	end 

	def update 
		@item = Item.find(params[:id])
		if @item.update_attributes(params[:item])
			redirect_to project_url(Project.find(@item.project_id))
		else 
			render :edit 
		end 
	end 
end
