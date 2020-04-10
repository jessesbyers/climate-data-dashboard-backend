class NoticesController < ApplicationController
    before_action :set_chart

    def index
        @notices = @chart.notices
        render json: NoticeSerializer.new(@notices)

    end

    def show
        @notice = @chart.notices.find_by(id: params[:id])
        render json: NoticeSerializer.new(@notice)
    end

    def create
        @notice = @chart.notices.new(notice_params)
        if @notice.save
            render json: NoticeSerializer.new(@notice)
        else
            render json: {error: "Notice cannot be saved to the database. Please try again."}
        end

    end

    def update
        @notice = @chart.notices.find_by(id: params[:id])
        if @notice.update(votes: params[:updatedNotice][:votes])
            render json: NoticeSerializer.new(@notice)
        else 
            render json: {error: "Vote was not updated. Please try again."}
        end
    end

    def destroy
        @notice = @chart.notices.find_by(id: params[:id])
        @notice.destroy
        render json: {alert: "Notice Deleted"}
    end

    private

    def notice_params
        params.require(:notice).permit(:content, :votes, :chart_id)
    end

    def set_chart
        # from params in nested route
        @chart = Chart.find(params[:chart_id])
    end


end
