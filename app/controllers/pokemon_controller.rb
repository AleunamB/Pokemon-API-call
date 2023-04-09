require 'poke-api-v2'

class PokemonController < ApplicationController
  def show
    #@pokemon = PokeApi.get(pokemon: "#{params[:id]}") #getting the Pokemons by ID

    if params[:search]
      @pokemon_search = Pokemon.find_by("lower(name) = :search OR id = :search", search: params[:search].downcase)
    else
      @pokemon = PokeApi.get(pokemon: "#{params[:id]}") #getting the Pokemons by ID
    end
  end

  def next_pokemon
    # current_pokemon_id = params[:id].to_i
    # @next_pokemon_id = current_pokemon_id + 1
    # redirect_to pokemon_path(@next_pokemon_id)
  end
end
