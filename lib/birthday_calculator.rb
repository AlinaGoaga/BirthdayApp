require 'time'
class BirthdayCalculator
  attr_reader :year, :month, :day

  def initialize(year, month, day)
    @year = year
    @month = month
    @day = day
  end

  def calculate_days
    (Date.new(year, month, day) - Date.today).to_i
  end
end
