require 'rails_helper'

RSpec.describe Photo, type: :model do
  describe '#create' do
    context 'photoを保存できる場合' do
      it 'textとphoto_imageがあれば保存できること' do
        photo = build(:photo)
        expect(photo).to be_valid
      end
    end

    context 'photoを保存できない場合' do
      it 'textがない場合は保存できないこと' do
        photo = build(:photo, text: nil)
        photo.valid?
        expect(photo.errors[:text]).to include("を入力してください") 
      end

      it 'photo_imageがない場合は保存できないこと' do
        photo = build(:photo, photo_image: nil)
        photo.valid?
        expect(photo.errors[:photo_image]).to include("を入力してください") 
      end

      it 'spot_idが無いと保存できないこと' do
        photo = build(:photo, spot_id: nil)
        photo.valid?
        expect(photo.errors[:spot]).to include("を入力してください")
      end

      it 'user_idが無いと保存できないこと' do
        photo = build(:photo, user_id: nil)
        photo.valid?
        expect(photo.errors[:user]).to include("を入力してください")
      end

    end
  end
end