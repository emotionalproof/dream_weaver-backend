class Api::V1::EntryThemesController < ApplicationController
    before_action :find_entry_theme, only: [:show, :update, :destroy]

    def index
        entry_themes = EntryTheme.all
        render json: entry_themes, status: 200
    end
    
    def show
        render json: @entry_theme, status: 200
    end

    def create
        entry_theme = EntryTheme.create!(entry_theme_params)
        render json: entry_theme, status: 200
    end

    def update
        @entry_theme.update!(entry_theme_params)
        render json: @entry_theme, status: 200
    end

    def destroy
        @entry_theme.destroy!
        render json: {}, status: 200
    end
    

    private
    
    def find_entry_theme
        @entry_theme = EntryTheme.find_by(id: params[:id])
    end

    def entry_theme_params
        params.permit(:name, :defnition, :entry_id, :theme_id)
    end
end
