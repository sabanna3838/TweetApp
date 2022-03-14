class RelationshipsController < ApplicationController

  #フォローする
  def follow
    @current_user.follow(params[:id])
    redirect_to request.referer
  end

  #フォロー外す
  def unfollow
    @current_user.unfollow(params[:id])
    redirect_to request.referer
  end

  

  
end
