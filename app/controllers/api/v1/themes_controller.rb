class Api::V1::ThemesController < ApplicationController
        before_action :find_theme, only: [:show, :update, :destroy]

    def index
        themes = Theme.all
        render json: themes, status: 200
    end
    
    def show
        render json: @theme, status: 200
    end

    def create
        theme = Theme.create!(theme_params)
        render json: theme, status: 200
    end

    def update
        @theme.update!(theme_params)
        render json: @theme, status: 200
    end

    def destroy
        @theme.destroy!
        render json: {}, status: 200
    end
    

    private
    
    def find_theme
        @theme = Theme.find_by(id: params[:id])
    end

    def theme_params
        params.permit(:name)
    end
end
