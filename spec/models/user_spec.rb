require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context 'ユーザー登録できる場合' do
      it 'nickname、email、passwordが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context 'ユーザー登録できない場合' do
      context 'nickname関連' do
        it 'nicknameが空では登録できない' do
          @user.nickname = ''
          @user.valid?
          expect(@user.errors.full_messages).to include "Nickname can't be blank"
        end
      end

      context 'email関連' do
        it 'emailが空では登録できない' do
          @user.email = ''
          @user.valid?
          expect(@user.errors.full_messages).to include "Email can't be blank"
        end
        it 'emailに「@」が含まれていないと登録できない' do
          @user.email = 'test.com'
          @user.valid?
          expect(@user.errors.full_messages).to include 'Email is invalid'
        end
        it '既に登録済みのemailは登録できない' do
          @user.save
          user2 = FactoryBot.build(:user)
          user2.email = @user.email
          user2.valid?
          expect(user2.errors.full_messages).to include 'Email has already been taken'
        end
      end

      context 'password関連' do
        it 'passwordが空では登録できない' do
          @user.password = ''
          @user.password_confirmation = ''
          @user.valid?
          expect(@user.errors.full_messages).to include "Password can't be blank",
                                                        'Password is invalid. Include both letters and numbers'
        end
        it 'passwordが6文字以下では登録できない' do
          @user.password = 'test1'
          @user.password_confirmation = @user.password
          @user.valid?
          expect(@user.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
        end
        it 'passwordが129文字以上では登録できない' do
          @user.password = '1a' + Faker::Internet.password(min_length: 129)
          @user.password_confirmation = @user.password
          @user.valid?
          expect(@user.errors.full_messages).to include 'Password is too long (maximum is 128 characters)'
        end
        it 'passwordが英数字混合でないと登録できない(英字のみ)' do
          @user.password = 'testtest'
          @user.password_confirmation = @user.password
          @user.valid?
          expect(@user.errors.full_messages).to include 'Password is invalid. Include both letters and numbers'
        end
        it 'passwordが英数字混合でないと登録できない(数字のみ)' do
          @user.password = '123456'
          @user.password_confirmation = @user.password
          @user.valid?
          expect(@user.errors.full_messages).to include 'Password is invalid. Include both letters and numbers'
        end
        it 'passwordが全角では登録できない' do
          @user.password = 'ｔｅｓｔ１１１'
          @user.password_confirmation = @user.password
          @user.valid?
          expect(@user.errors.full_messages).to include 'Password is invalid. Include both letters and numbers'
        end
        it 'passwordとpassword_confirmationが不一致では登録できない' do
          @user.password = 'test123'
          @user.password_confirmation = '123test'
          @user.valid?
          expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
        end
      end
    end
  end
end
