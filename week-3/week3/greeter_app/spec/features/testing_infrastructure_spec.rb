feature 'Testing infrastructure' do
  scenario 'it can run the app and checks page for content' do
    visit('/test')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
