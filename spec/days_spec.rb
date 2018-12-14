require 'days'

describe Days do
  describe '#days' do
    days = Days.new(2019, 6, 25)
    it 'returns the number of days between a given date and the current date' do
      expect(days.calculate_days).to eq 193
    end
  end
end
