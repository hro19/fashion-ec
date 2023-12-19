module ApplicationHelper
  include ActiveSupport::NumberHelper

  require "date"
  def updated_at_jp(date)
    date.strftime("%Y年%m月%d日") 
  end
end
