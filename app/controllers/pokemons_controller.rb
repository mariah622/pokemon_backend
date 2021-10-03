class PokemonsController < ApplicationController
    def index
        pokemons = Pokemon.all
        render json: pokemons
    end 

    def create 
        pokemon = Pokemon.new(pokemon_params)
        # byebug
        if pokemon.save
            render json: pokemon
        else
            render json: {error: "Could not create pokemon."} 
        end 

    end

    def update 
        pokemon = Pokemon.find_by_id(params[:id])
        if pokemon.update(pokemon_params)
            render json: pokemon
        else 
            render json: {error: "Could not pokemon comment. Try again."}
        end 
    end 

    def destroy
        pokemon = Pokemon.find_by_id(params[:id])
        pokemon.destroy
        render json: {message: "Pokemon has been deleted succesfully!"}
    end 


    private

    def pokemon_params 
        params.require(:pokemon).permit(:id, :name, :move, :ability)
    end
end
