class Api::V1::DreamSymbolsController < ApplicationController
    before_action :find_dream_symbol, only: [:show, :update, :destroy]

    def index
        dream_symbols = DreamSymbol.all
        render json: dream_symbols, status: 200
    end
    
    def show
        render json: @dream_symbol, status: 200
    end

    def create
        dream_symbol = DreamSymbol.create!(dream_symbol_params)
        render json: dream_symbol, status: 200
    end

    def update
        @dream_symbol.update!(dream_symbol_params)
        render json: @dream_symbol, status: 200
    end

    def destroy
        @dream_symbol.destroy!
        render json: {}, status: 200
    end
    

    private
    
    def find_dream_symbol
        @dream_symbol = DreamSymbol.find_by(id: params[:id])
    end

    def dream_symbol_params
        params.permit(:name, :meaning, :dictionary_id)
    end
end
