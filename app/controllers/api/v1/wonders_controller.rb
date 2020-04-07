class Api::V1::WondersController < ApplicationController

    before_action :set_chart

    def index
        @wonders = @chart.wonders
        render json: @wonders

    end

    def show
        # @wonder = Wonder.find(params[:id])
        @wonder = @chart.wonders.find_by(id: params[:id])
        render json: @wonder

    end

    def create
        @wonder = @chart.wonders.new(wonder_params)
        if @wonder.save
            render json: @wonder
        else
            render json: {error: "Wonder cannot be saved to the database. Please try again."}
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
        # from params in nested route
        @chart = Chart.find(params[:chart_id])
    end
end
