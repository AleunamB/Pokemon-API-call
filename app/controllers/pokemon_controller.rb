require 'poke-api-v2'

class PokemonController < ApplicationController
  def show
    @pokemon = PokeApi.get(pokemon: "#{params[:id]}") #getting the Pokemons by ID

    # @pokemon = Pokemon.new(
    #
    #
  
    #
    # )
  end
end
