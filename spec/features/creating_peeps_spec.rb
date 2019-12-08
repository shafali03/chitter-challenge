feature 'Adding a new peep' do
  scenario 'A user can add peeps' do
    visit('/peeps/new')
  
    fill_in('message', with: 'adding a peep testing')
    click_button('Submit')

    expect(page).to have_content 'adding a peep testing'
  end
end