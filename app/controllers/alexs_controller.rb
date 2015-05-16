class AlexsController < ApplicationController	

	def index
		fiesta = Party.all		
		render json: fiesta
	end

	def show
		fiesta = Party.find(params[:id])
		render json: fiesta.to_json
	end

	def create
		fiesta = Party.new(permit)
		if fiesta.valid?
			fiesta.save
			render json: fiesta
		else
			render json: fiesta.errors.message
		end
	end

	def destroy
		exist = Party.exists?(params[:id])
		if exist
			fiesta = Party.delete(params[:id])
			render json: {"Mensaje" => "El evento fue borrado"}
		else
			render json: fiesta.errors.message
		end
	end

	def update
		exist = Party.exists?(params[:id])
		if exist
			fiesta = Party.update(params[:id], permit)
			render json: fiesta
		else
			render json: fiesta.errors.message
		end
	end

	private
	def permit
		params.permit(:name, :address, :date, :reservation)
	end
end