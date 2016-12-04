feature 'Creating a user' do
  scenario 'user enters his name and get a greeting message' do
    log_in
    expect(page).to have_content 'Hello, Sal!'
    expect(page).to have_content 'Your collcetion: 0 Kudomons'
  end
end
