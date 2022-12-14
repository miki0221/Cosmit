class ItemsController < ApplicationController

  def index
    @category_face = Item.where(category_id: 2)
    @post_face = @category_face.all.order('created_at DESC')

    @category_eye = Item.where(category_id: 3)
    @post_eye = @category_eye.all.order('created_at DESC')
    
    @category_lip = Item.where(category_id: 4)
    @post_lip = @category_lip.all.order('created_at DESC')

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

  private

  def item_params
    params.require(:item).permit(:image, :brand, :title, :content, :category_id, :category_option_id,
                                 :start_date).merge(user_id: current_user.id)
  end

end
