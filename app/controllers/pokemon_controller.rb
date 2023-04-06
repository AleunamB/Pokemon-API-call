require 'poke-api-v2'

class PokemonController < ApplicationController
  def show
    @pokemon = PokeApi.get(pokemon: "#{params[:id]}") # Fetches data from https://pokeapi.co/api/v2/pokemon/bulbasaur/

    # response = PokeApi.get(pokemon: 'bulbasaur')
    # json = JSON.parse(response.body)

    # @pokemon = Pokemon.new(
    #   name: JSON['forms'][0]['name'],
    #   photo: JSON['sprites']['front_default'],
    #   move_name_0: JSON[0][move][name],
    #   move_name_1: JSON[1][move][name],
    #   move_name_2: JSON[2][move][name],
    #   type_name: JSON['types'][0]['type']['name']
    # )
    # render 'pokemon/show'
  end
end
