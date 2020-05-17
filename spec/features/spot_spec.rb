require 'rails_helper'

feature 'tweet', type: :feature do
  let(:user) { create(:user) }
  let(:spot) { create(:spot) }
  scenario 'ユーザー情報が更新されていること' do
    visit spot_path(spot)
    expect(page).to have_no_content('▶投稿する')

    visit new_user_session_path
    fill_in 'user_email' , with: user.email
    fill_in 'user_password' , with: user.password
    find('input[name="commit"]').click
    expect(current_path).to eq root_path
    expect{
      visit spot_path(spot)
      fill_in 'photo_text', with: 'testtext'
      attach_file 'photo_photo_image',"#{Rails.root}/public/images/test_image.jpg"
      find('input[name="commit"]').click
    }.to change(Photo, :count).by(1)
  
  end
end