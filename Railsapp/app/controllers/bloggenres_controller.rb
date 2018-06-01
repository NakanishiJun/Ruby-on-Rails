class BloggenresController < ApplicationController
  layout 'bloggenres'

  def index
    @data = Bloggenre.all
  end

  def add
    @bloggenre = Bloggenre.new
    if request.post? then
      @bloggenre = Bloggenre.create bloggenre_params
      redirect_to '/bloggenres'
    end
  end

  def edit
    @bloggenre = Bloggenre.find params[:id]
    @genres = Bloggenre.all
    if request.patch? then
      @bloggpost.update bloggenre_params
      redirect_to '/blogposts'
  end

  def delete
    @bloggpost = Blogpost.find(params[:id])
    if request.post? then
      @bloggpost.destroy
      redirect_to '/blogposts'
    end
  end

  private
  def blogposts_params
    params.require(:blogpost).permit(:title, :read, :content, :bloggenre_id)    
  end
end
