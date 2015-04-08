class Party < ActiveRecord::Base
	validates :name, :address, :date, :reservation, presence: true
  def parties
  	party = Array.new
  	
  	party.push = { 
  		name: "Fiesta Navidad", 
  		address: "Salon Venezuela, Circulo Militar", 
  		date: "24-12-2015", 
  		reservation: "pendiente"}

  	party.push = { 
  		name: "Fin de Anio", 
  		address: "El Poliedro", 
  		date: "31-12-2015", 
  		reservation: "pendiente"}

  	party.push = { 
  		name: "Graduacion", 
  		address: "Eurobuilding", 
  		date: "24-08-2015", 
  		reservation: "pendiente"}

  	party.push = { 
  		name: "Boda", 
  		address: "Tamanaco", 
  		date: "18-12-2015", 
  		reservation: "pendiente"}
  	end 
end
