class ChartsController < ApplicationController

    def index
        @charts = Chart.all
        render json: ChartSerializer.new(@charts).to_json(:except => [:updated_at, :created_at])
    end

    def show
        @chart = Chart.find(params[:id])
        render json: ChartSerializer.new(@chart).to_json(:except => [:updated_at, :created_at])
    end

    def create
        @chart = Chart.new(chart_params)
        if @chart.save
            render json: ChartSerializer.new(@chart).to_json(:except => [:updated_at, :created_at])
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
