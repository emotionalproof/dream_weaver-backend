class Api::V1::EntriesController < ApplicationController
    before_action :find_entry, only: [:show, :update, :destroy]

    def index
        entries = Entry.all
        render json: entrys, status: 200
    end
    
    def show
        render json: @entry, status: 200
    end

    def create
        entry = Entry.create!(entry_params)
        render json: entry, status: 200
    end

    def update
        @entry.update!(entry_params)
        render json: @entry, status: 200
    end

    def destroy
        @entry.destroy!
        render json: {}, status: 200
    end
    

    private
    
    def find_entry
        @entry = Entry.find_by(id: params[:id])
    end

    def entry_params
        params.require(:entry).permit(:date, :title, :description, :interpretation, :id, :user_id)
    end
end
