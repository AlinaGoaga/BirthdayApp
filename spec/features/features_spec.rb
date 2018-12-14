feature 'Welcome page' do
  scenario 'greeting the user' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end

  scenario 'the user inputs their name and birthday (date and month)' do
    visit('/')
    fill_in :name, with: 'Alina'
    fill_in :day, with: '25'
    fill_in :month, with: 'June'
    click_button 'Go!'
  end
end
