class PokemonController < ApplicationController
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
end
