class Api::V1::SymbolsController < ApplicationController
    before_action :find_symbol, only: [:show, :update, :destroy]

    def index
        symbols = Symbol.all
        render json: symbols
    end
    
    def show
        render json: @symbol
    end

    def create
        symbol = Symbol.create!(symbol_params)
        render json: symbol
    end

    def update
        @symbol.update!(symbol_params)
        render json: @symbol
    end

    def destroy
        @symbol.destroy!
        render json: {}
    end
    

    private
    
    def find_symbol
        @symbol = Symbol.find_by(id: params[:id])
    end

    def symbol_params
        params.permit(:name, :meaning, :user_id, :dictionary_id)
    end
end
