feature "Catch 'em all" do
  scenario "player can catch a Kudomon" do
    log_in
    expect(page).to have_content "Your collcetion: 0 Kudomons"
    click_button "Throw Kudoball"
    expect(page).to have_content "Your collcetion: 1 Kudomons"
  end
end
