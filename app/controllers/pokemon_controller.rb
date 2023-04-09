require 'poke-api-v2'

class PokemonController < ApplicationController
  def show
    @pokemon = PokeApi.get(pokemon: "#{params[:id]}") #getting the Pokemons by ID

    if params[:search]
      @pokemon = Pokemon.find_by("lower(name) = :search OR id = :search", search: params[:search].downcase)
    else
      @pokemon = PokeApi.get(pokemon: params[:id])
    end
  end
end
