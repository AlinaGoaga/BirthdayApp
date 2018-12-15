require 'birthday_calculator'

describe BirthdayCalculator do
  before do
    Timecop.freeze(Time.local(2018, 12, 14))
  end

  after do
    Timecop.return
  end

  describe '#calculate_days' do
    days = described_class.new(2019, 6, 25)
    it 'returns the number of days between a given date and the current date' do
      expect(days.calculate_days).to eq 193
    end
  end
end
