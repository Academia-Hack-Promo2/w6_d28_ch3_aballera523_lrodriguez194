class AlexsController < ApplicationController
	def index
		party = Party.all
		render json: party
	end

	def show
		party = Party.find(params[:id])
		render json: party
	end

	def create
		party = Party.new(permit)
		if party.save
			render json: {message: "Party created", id: party.id}
		else
			render json: {message: "Party not created"}
		end
	end

	def destroy
		party = Party.find(params[:id])
		if party.destroy
			render json: {message: "Party was destroyed"}
		else
			render json: {message: "Party can not destroyed"}
		end
	end

	def update
		party = Party.update(params[:id].to_i, permit)
		render json: party
	end

	private
	def permit
		params.require(:party).permit(:name, :address, :date, :reservation)
	end
end
