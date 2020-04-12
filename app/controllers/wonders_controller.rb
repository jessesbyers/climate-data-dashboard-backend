class WondersController < ApplicationController

    before_action :set_chart

    def index
        @wonders = @chart.wonders
        render json: @wonders.to_json(:except => [:updated_at, :created_at])

    end

    def show
        @wonder = @chart.wonders.find_by(id: params[:id])
        render json: @wonder.to_json(:except => [:updated_at, :created_at])

    end

    def create
        @wonder = @chart.wonders.new(wonder_params)
        if @wonder.save
            render json: @wonder.to_json(:except => [:updated_at, :created_at])
        else
            render json: {error: "Wonder cannot be saved to the database. Please try again."}
        end

    end

    def update
        @wonder = @chart.wonders.find_by(id: params[:id])
        if @wonder.update(votes: params[:updatedWonder][:votes])
            render json: @wonder.to_json(:except => [:updated_at, :created_at])
        else 
            render json: {error: "Vote was not updated. Please try again."}
        end
    end

    def destroy
        @wonder = @chart.wonders.find_by(id: params[:id])
        @wonder.destroy
        render json: {alert: "Wonder Deleted"}
    end

    private

    def wonder_params
        params.require(:wonder).permit(:content, :votes, :chart_id)
    end

    def set_chart
        @chart = Chart.find(params[:chart_id])
    end
end
