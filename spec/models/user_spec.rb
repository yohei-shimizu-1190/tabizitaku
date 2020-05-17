require 'rails_helper'

describe User do
  describe '#create' do
    context 'userを登録できる場合' do
      it "nickname、email、passwordとpassword_confirmationが存在すれば登録できること" do
        user = build(:user)
        expect(user).to be_valid
      end
      
      it "nicknameが20文字以内では登録できること" do
        user = build(:user, nickname: "a123456789b123456789")
        expect(user).to be_valid
      end
      
      it "passwordが6文字以上であれば登録できること" do
        user = build(:user, password: "123456", password_confirmation: "123456")
        expect(user).to be_valid
      end
    end
    
    context 'userが登録できない場合' do
      it "nicknameがない場合は登録できないこと" do
        user = build(:user, nickname: nil)
        user.valid?
        expect(user.errors[:nickname]).to include("を入力してください")
      end

      

      it "emailがない場合は登録できないこと" do
        user = build(:user, email: nil)
        user.valid?
        expect(user.errors[:email]).to include("を入力してください")
      end

      it "passwordがない場合は登録できないこと" do
        user = build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("を入力してください")
      end

      it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
        user = build(:user, password_confirmation: "")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
      end

      it "nicknameが21文字以上であれば登録できないこと" do
        user = build(:user, nickname: "a123456789b123456789c")
        user.valid?
        expect(user.errors[:nickname]).to include("は20文字以内で入力してください")
      end

      it "重複したnicknameが存在する場合登録できないこと" do
        user = create(:user)
        another_user = build(:user, nickname: user.nickname)
        another_user.valid?
        expect(another_user.errors[:nickname]).to include("はすでに存在します")
      end

      it "重複したemailが存在する場合登録できないこと" do
        user = create(:user)
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("はすでに存在します")
      end

      it "passwordが5文字以下であれば登録できないこと" do
        user = build(:user, password: "12345", password_confirmation: "12345")
        user.valid?
        expect(user.errors[:password]).to include("は6文字以上で入力してください")
      end

    end

  end
end