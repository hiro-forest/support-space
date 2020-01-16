class GroupsController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def update
    if current_group.update(group_params)
      redirect_to new__supporter__path notice: 'グループ情報を変更しました'
    else
      render :edit
    end
  end

  private

  # def group_params
  #   params.require(:group).permit(:groupname, :location, :email)
  # end

  
end
