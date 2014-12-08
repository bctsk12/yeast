class Page < ActiveRecord::Base
  def self.matches(name, message)
    where(exception: name).where("? ~ pages.message_matcher", message)
  end

  def matches?(name, message)
    name == exception && regex.match(message)
  end

  def regex
    Regexp.new(message_matcher)
  end
end
