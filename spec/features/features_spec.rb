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

feature 'Your birthday is today! Happy birthday!' do
  scenario 'wishing the user a happy birthday' do
    visit('/')
    fill_in :name, with: 'Alina'
    fill_in :day, with: '14'
    fill_in :month, with: '12'
    click_button 'Go!'
    expect(page).to have_content 'Your birthday is today! Happy birthday!'
  end
end
