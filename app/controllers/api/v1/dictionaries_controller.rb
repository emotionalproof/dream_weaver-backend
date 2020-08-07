class Api::V1::DictionariesController < ApplicationController
    before_action :find_dictionary, only: [:show, :update, :destroy]

    def index
        dictionaries = dictionary.all
        render json: dictionaries
    end
    
    def show
        render json: @dictionary.json(:include => symbols)
    end

    def create
        dictionary = Dictionary.create!(dictionary_params)
        render json: dictionary
    end

    def update
        @dictionary.update!(dictionary_params)
        render json: @dictionary
    end

    def destroy
        @dictionary.destroy!
        render json: {}
    end
    

    private
    
    def find_dictionary
        @dictionary = Dictionary.find_by(id: params[:id])
    end

    def dictionary_params
        params.permit(:name)
    end
end
