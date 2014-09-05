class SuperherosController < ApplicationController

	def index
		@superheros = Superhero.all
	end

	def new
		@superhero = Superhero.new
	end

	def edit
		@superhero = Superhero.find(params[:id])
	end

	def update
		@superhero = Superhero.find(params[:id])
	end

	def create
		@superhero = Superhero.new(superhero_params)
		if @superhero.save
			redirect_to @superhero
		end
	end

	def destroy
		@superhero = Superhero.find(params[:id])
		@superhero.destroy
		redirect_to superheros_url
	end
end
