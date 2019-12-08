require 'pg'

feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    connection = PG.connect(dbname: 'chitter_manager_test')

    Peep.create(message: "first peeps message")
    Peep.create(message: "second peeps message")

    visit('/peeps')

    expect(page).to have_content "first peeps message"
    expect(page).to have_content "second peeps message"
  end
end
