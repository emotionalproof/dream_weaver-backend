class Api::V1::DictionariesController < ApplicationController
    before_action :find_dictionary, only: [:show, :update, :destroy]

    def index
        dictionaries = Dictionary.all
        render json: dictionaries, status: 200
    end
    
    def show
        render json: @dictionary, status: 200
    end

    def create
        dictionary = Dictionary.create!(dictionary_params)
        render json: dictionary, status: 200
    end

    def update
        @dictionary.update!(dictionary_params)
        render json: @dictionary, status: 200
    end

    def destroy
        @dictionary.destroy!
        render json: {}, status: 200
    end
    

    private
    
    def find_dictionary
        @dictionary = Dictionary.find_by(id: params[:id])
    end

    def dictionary_params
        params.permit(:name)
    end
end
