class GiftsController < ApplicationController

  def index
    @gift = Gift.new
    @gifts = Gift.all.order("id DESC")
    gift = [].take(10)
    @group = Group.all
    # @gifts = @group.gifts.includes(:group)
  end

  def create
    @gift = Gift.create(gift_params)
    respond_to do |format|
      format.html { redirect_to gifts_path }
      format.json { render json: @gift}
    end
  end

  def show
    @gift = gift.find(params[:id])
  end

  private

  def gift_params
    params.require(:gift).permit(:content, :image).merge(group_id: current_group.id)
  end

end
