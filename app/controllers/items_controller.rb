class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :check_page_user, only: [:edit, :update, :destroy]

  def index
    category_face = Item.where(category_id: 2)
    @post_face = category_face.includes(:user).order('created_at DESC')

    category_eye = Item.where(category_id: 3)
    @post_eye = category_eye.includes(:user).order('created_at DESC')

    category_lip = Item.where(category_id: 4)
    @post_lip = category_lip.includes(:user).order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @today = Date.today
    start_date = @item.start_date.to_date
    @expiration_date_3month = start_date >> 3
    @expiration_date_6month = start_date >> 6
    @expiration_date_1year = start_date >> 12
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to user_path(@item.user.id)
  end


  private

  def item_params
    params.require(:item).permit(:image, :brand, :title, :content, :category_id, :category_option_id,
                                 :start_date).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def check_page_user
    return unless user_signed_in? && @item.user_id != current_user.id

    redirect_to action: :index
  end
end
