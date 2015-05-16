class AlexsController < ApplicationController	

	def index
	fiesta = Party.new(permit)		
		if fiesta = Party.exists?			
			fiesta = Party.all		
			render json: fiesta			
		else
			fiesta = Party.new(permit)
			fiesta.name = "Graduacion"			
			fiesta.address = "Circulo Militar"
			fiesta.date = "25-06-2015"
			fiesta.reservation = "Reservado"
			fiesta.save

			fiesta1 = Party.new(permit)
			fiesta1.name = "Boda"
			fiesta1.address = "El Laguito"
			fiesta1.date = "25-06-2015"
			fiesta1.reservation = "Reservado"
			fiesta1.save

			fiesta2 = Party.new(permit)
			fiesta2.name = "Fiesta de 15 años"
			fiesta2.address = "Hotel Marriott"
			fiesta2.date = "25-06-2015"
			fiesta2.reservation = "Reservado"
			fiesta2.save

			fiesta3 = Party.new(permit)
			fiesta3.name = "Expo Hábitat 2015"
			fiesta3.address = "Hotel Eurobuilding"
			fiesta3.date = "25-06-2015"
			fiesta3.reservation = "Reservado"
			fiesta3.save

			fiesta = Party.all		
			render json: fiesta
		end
	end

	def show
		exist = Party.exists?(params[:id])
		if exist
			fiesta = Party.find(params[:id])
			render json: fiesta
		else
			render json: {"Mensaje" => "El evento no existe"}
		end		
	end

	def create		
		fiesta = Party.new(permit)
		if fiesta.valid?
			fiesta.save
			render json: fiesta
		else
			render json: {"Mensaje" => "El evento no fué creado"}
		end			
	end

	def destroy
		exist = Party.exists?(params[:id])
		if exist
			fiesta = Party.delete(params[:id])
			render json: {"Mensaje" => "El evento fue borrado"}
		else
			render json: {"Mensaje" => "El evento no existe"}
		end
	end

	def update
		exist = Party.exists?(params[:id])
		if exist
			fiesta = Party.update(params[:id], permit)
			render json: fiesta
		else
			render json: {"Mensaje" => "El evento no existe"}
		end
	end

	private
	def permit
		params.permit(:name, :address, :date, :reservation)
	end
end