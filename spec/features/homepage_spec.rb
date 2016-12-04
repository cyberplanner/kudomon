feature 'visit homepage' do
  scenario 'user visits the app' do
    visit('/')
    expect(page).to have_content 'Welcome to Kudomons!'
  end
end
