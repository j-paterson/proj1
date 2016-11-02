class PokemonController < ApplicationController
	def capture
		@id = params[:id]
		current_pokemon = Pokemon.find(@id)
		current_pokemon.update_attribute(:trainer_id, current_trainer.id)
		redirect_to "/"
	end
end
