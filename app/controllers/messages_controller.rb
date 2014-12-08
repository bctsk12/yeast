class MessagesController < ApplicationController
  before_action :set_logged_exception
  before_action :set_page

  def show
  end

  private

    def set_logged_exception
      @logged_exception = LoggedException.where(name: params[:logged_exception_id], message: params[:id]).last
    end

    def set_page
      @page = @logged_exception.page
    end
end
