class LoggedExceptionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @grouped_exceptions = LoggedException.group(:name, :message).order("count_all desc").count
  end

  def show
    @logged_exceptions = LoggedException.where(name: params[:id]).order(created_at: :desc)
  end

  def create
    @logged_exception = LoggedException.create exception_params

    head :ok, content_type: "application/json"
  end

  private

    def exception_params
      params.require(:exception).permit(:name, :message, :backtrace)
    end
end
