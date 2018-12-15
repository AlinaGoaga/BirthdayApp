require 'time'

class BirthdayCalculator
  attr_reader :month, :day

  def initialize(month, day)
    @month = month
    @day = day
  end

  def calculate_days
    @days = (Date.new(Date.today.year, month, day) - Date.today).to_i
    @days = (Date.new(Date.today.year + 1, month, day) - Date.today).to_i if @days < 0
    @days
  end
end
