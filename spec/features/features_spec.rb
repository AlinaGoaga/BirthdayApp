feature 'Welcome page' do
  scenario 'greeting the user' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end
