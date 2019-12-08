feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    visit('/peeps')
    expect(page).to have_content "first peeps message"
    expect(page).to have_content "second peeps message"
  end
end