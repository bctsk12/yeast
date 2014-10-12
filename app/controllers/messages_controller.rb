class MessagesController < ApplicationController
  def show
    @logged_exception = LoggedException.where(name: params[:logged_exception_id], message: params[:id]).first
  end
end
