

feature 'Welcome page' do
  scenario 'greeting the user' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end

  scenario 'the user inputs their name and birthday (date and month)' do
    visit('/')
    fill_in :name, with: 'Alina'
    fill_in :day, with: '25'
    fill_in :month, with: '6'
    click_button 'Go!'
  end
end

feature 'Show message' do
  before do
    Timecop.freeze(Time.local(2018, 12, 14))
  end

  after do
    Timecop.return
  end

  scenario 'tell the user how many days are left to their birthday' do
    visit('/')
    fill_in :name, with: 'Alina'
    fill_in :day, with: '25'
    fill_in :month, with: '6'
    click_button 'Go!'
    expect(page).to have_content 'Your birthday will be in 193 days, Alina'
  end

  scenario 'wish the user a happy birthday if their birthday falls on the current date' do
    visit('/')
    fill_in :name, with: 'Alina'
    fill_in :day, with: '14'
    fill_in :month, with: '12'
    click_button 'Go!'
    expect(page).to have_content 'Your birthday is today! Happy birthday!'
  end
end
