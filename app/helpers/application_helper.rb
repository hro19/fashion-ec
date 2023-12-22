module ApplicationHelper
  include ActiveSupport::NumberHelper

  require "date"
  def updated_at_jp(date)
    date.strftime("%Y年%m月%d日") 
  end

  def include_tax(price)
    taxed_price = BigDecimal(price * 1.1, 2).floor # 精度を2桁に指定
  end

  def include_tax_in_yen(price)
    taxed_price = include_tax(price)
    return number_to_delimited(taxed_price)
  end

end
