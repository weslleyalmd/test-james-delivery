module ChargesHelper
  def to_currency(amount, currency)
    number_to_currency(amount.to_f / 10, unit: currency.upcase)
  end

  def convert_time(time)
    time.strftime("%m/%d/%Y %H:%M:%S")
  end
end