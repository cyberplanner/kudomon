feature 'Creating a user' do
  scenario 'user enters his name and get a greeting message' do
    visit '/'
    fill_in :player_name, with: 'Sal'
    click_button 'Submit'
    expect(page).to have_content 'Hello, Sal!'
    expect(page).to have_content 'Your collcetion: 0 Kudomons'
  end
end
