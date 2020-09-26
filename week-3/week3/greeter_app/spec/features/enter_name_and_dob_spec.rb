feature 'Fill form' do
  scenario 'submitting form' do
    visit('/')
    fill_in :player_1_name, with: 'Dill'

    select '24', :from => :day
    select '7', :from => :month
    click_button 'Go!'
    expect(page).to have_content 'Happy Birthday Dill!'
  end
end
