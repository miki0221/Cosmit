require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe 'コスメ登録' do
    context 'コスメ登録ができる場合' do
      it '画像、カテゴリー、カテゴリー詳細、ブランド名、コスメ名、フリーワード、使用開始日が存在していれば登録ができる' do
        expect(@item).to be_valid
      end
      it 'フリーワードが空でも登録ができる' do
        @item.content = ''
        expect(@item).to be_valid
      end
    end

    context 'コスメ登録ができない場合' do
      it '画像が空では登録ができない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include "Image can't be blank"
      end

      it 'カテゴリーが空(未選択)では登録ができない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Category can't be blank"
      end

      it 'カテゴリー詳細が空(未選択)では登録ができない' do
        @item.category_option_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Category option can't be blank"
      end

      it 'ブランド名が空では登録ができない' do
        @item.brand = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Brand can't be blank"
      end

      it 'コスメ名が空では登録ができない' do
        @item.title = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Title can't be blank"
      end

      it '使用開始日が空では登録ができない' do
        @item.start_date = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Start date can't be blank"
      end
    end
  end
end
