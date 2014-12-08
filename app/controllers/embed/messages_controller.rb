class Embed::MessagesController < MessagesController
  layout "embed"

  before_action :log_exception
  before_action :set_page

  def show
    render template: "messages/show"
  end

  private

    def log_exception
      @logged_exception = LoggedException.create(name: params[:logged_exception_id], message: params[:id])
    end
end
