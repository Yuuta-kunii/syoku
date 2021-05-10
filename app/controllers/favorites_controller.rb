class FavoritesController < ApplicationController
  def index
    @favorites=Favorite.all
  end
  
  def create
   favorite=Favorite.new
   favorite.user_id=current_user.id
   favorite.topic_id=params[:topic.id]
   if favorite.save
    redirect_to index_topics_path,success: "お気に入りに登録しました"
   else
    flash.now[:danger]="お気に入りに登録できませんでした"
    render :index
   end
  end
    
  
end
