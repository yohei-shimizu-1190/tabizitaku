require 'rails_helper'

describe PhotosController do
  let(:spot) { create(:spot) }
  let(:user) { create(:user) }
  
  describe '#create' do 
    let(:params) { { spot_id: spot.id, user_id: user.id, photo: attributes_for(:photo) } }
    context 'ログインしている場合' do
      before do
        login user
      end
      context '保存に失敗した場合' do
        let(:invalid_params) { { spot_id: spot.id, user_id: user.id, photo: attributes_for(:photo, text: nil, photo_image: nil) } }
          subject {
            post :create,
            params: invalid_params
          }
        it 'photoを保存しないこと' do
          expect{ subject }.not_to change(Photo, :count)
        end
      end
    end
  end

end