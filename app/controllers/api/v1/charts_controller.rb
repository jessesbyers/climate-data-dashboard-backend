class Api::V1::ChartsController < ApplicationController

    def index
        @charts = Chart.all
        render json: @charts
    end

    def show
        @chart = Chart.find(params[:id])
        render json: @chart
    end

    def create
        @chart = Chart.new(chart_params)
        if @chart.save
            render json: @chart
        else
            render json: {error: "Chart cannot be saved to the database. Please try again."}
        end
    end

    def destroy
        @chart = Chart.find(params[:id])
        @chart.destroy
        render json: {alert: "Chart Deleted"}
    end

    private

    def chart_params
        params.require(:chart).permit(:name, :data_url)
    end
end
