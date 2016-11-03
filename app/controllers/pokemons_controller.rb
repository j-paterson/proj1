class PokemonsController < ApplicationController
	def capture
		@id = params[:id]
		current_pokemon = Pokemon.find(@id)
		current_pokemon.update_attribute(:trainer_id, current_trainer.id)
		redirect_to "/"
	end
	def damage
		@id = params[:id]
		@trainer_id = params[:trainer_id]
		current_pokemon = Pokemon.find(@id)
		current_pokemon.update_attribute(:health, current_pokemon.health-10)
		if current_pokemon.health <= 0
			current_pokemon.destroy
		end
		redirect_to '/trainers/'+@trainer_id
	end
	def new
		@error = "A name is mandatory, please specify one"
		@new_pokemon = Pokemon.new
	end
	def create
		@input_name = params[:pokemon][:name]
		Pokemon.create name: @input_name, level: 1, health: 100, trainer_id: current_trainer.id
		redirect_to '/trainers/'+current_trainer.id.to_s
	end
end
