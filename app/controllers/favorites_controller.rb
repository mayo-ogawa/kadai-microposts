class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.mark(micropost)
    flash[:success] = 'micropostをお気に入り登録しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unmark(micropost)
    flash[:success] = 'micropostのお気に入りを解除しました。'
    redirect_to root_url
  end
end


