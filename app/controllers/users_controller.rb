class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    items = user.items

    # カテゴリー
    category_face = items.where(category_id: 2)
    @post_face = category_face.includes(:user).order("created_at DESC")

    category_eye = items.where(category_id: 3)
    @post_eye = category_eye.includes(:user).order("created_at DESC")

    category_lip = items.where(category_id: 4)
    @post_lip = category_lip.includes(:user).order("created_at DESC")

    # 残数
    item = Item.find(params[:id])
    @today = Date.today
  end
end
