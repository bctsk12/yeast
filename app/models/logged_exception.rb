class LoggedException < ActiveRecord::Base
  def page
    Page.matches(name, message).first
  end
end
