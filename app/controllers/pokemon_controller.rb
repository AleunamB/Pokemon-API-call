require 'poke-api-v2'

class PokemonController < ApplicationController
  def show
    @pokemon = PokeApi.get(pokemon: "#{params[:id]}") #getting the Pokemons by ID
  end

  def next_pokemon
    current_pokemon_id = params[:id].to_i
    @next_pokemon_id = current_pokemon_id + 1
    redirect_to pokemon_path(@next_pokemon_id)
  end

  def previous_pokemon
  end

end
