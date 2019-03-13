feature 'Allow Creation of space' do
  scenario 'As a logged in user I can create a speace' do
    visit '/'
    click_button('sign-up')
    fill_in('name', with: 'Bob')
    fill_in('username', with: 'BobBuilder')
    fill_in('password', with: '1234')
    fill_in('email', with: 'Bob@bob.bob')
    click_button('submit')
    click_button('create-space')

    expect(current_path).to eq "/space/creation"
  end
end
