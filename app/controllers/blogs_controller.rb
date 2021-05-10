class BlogsController < ApplicationController
  def new
    @blog=Blog.new
  end
  
  def create
    @blog=current_user.blogs.new(blog_params)
    if @blog.save
      redirect_to blog_index_path,success:"投稿しました"
    else
      flash.now[:danger]="投稿できませんでした"
      render:new
    end
  end
  
  private
  def blog_params
    params.require(:blog).permit(:content,:photo)
  end
end
