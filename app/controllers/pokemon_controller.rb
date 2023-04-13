require 'poke-api-v2'

class PokemonController < ApplicationController
  def search
    raise
    if params[:id]
      @pokemon = Pokemon.find_by(params[:id])
    else
      @pokemon = PokeApi.get(pokemon: params[:id])
    end
  end
  
  def show
    @pokemon = PokeApi.get(pokemon: "#{params[:id]}") #getting the Pokemons by ID
  end
end
