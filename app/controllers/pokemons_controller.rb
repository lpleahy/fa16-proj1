class PokemonsController < ApplicationController

    def capture
        @pokemon = Pokemon.find(params[:id])
        @pokemon.trainer_id = current_trainer.id
        @pokemon.save!
        redirect_to :root
    end

    def damage
        @pokemon = Pokemon.find(params[:id])
        @pokemon.health -= 10
        @pokemon.save

        if @pokemon.health <= 0
            @pokemon.destroy
            @pokemon.save
        end

        redirect_to trainer_path(:id => current_trainer.id)
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
        @pokemon = Pokemon.new
        @pokemon.name = params[:pokemon][:name]
        @pokemon.level = 1,
        @pokemon.health = 100,
        @pokemon.trainer_id = current_trainer.id
        if @pokemon.save
            redirect_to trainer_path(id: @pokemon.trainer_id)
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to new_path
        end
    end

end
