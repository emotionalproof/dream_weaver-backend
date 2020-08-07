class Api::V1::EntryThemesController < ApplicationController
    before_action :find_entry_theme, only: [:show, :update, :destroy]

    def index
        entry_themes = EntryTheme.all
        render json: entry_themes
    end
    
    def show
        render json: @entry_theme
    end

    def create
        entry_theme = EntryTheme.create!(entry_theme_params)
        render json: entry_theme
    end

    def update
        @entry_theme.update!(entry_theme_params)
        render json: @entry_theme
    end

    def destroy
        @entry_theme.destroy!
        render json: {}
    end
    

    private
    
    def find_entry_theme
        @entry_theme = EntryTheme.find_by(id: params[:id])
    end

    def entry_theme_params
        params.permit(:name, :defnition, :user_id, :dictionary_id)
    end
end
