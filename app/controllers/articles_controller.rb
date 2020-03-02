class ArticlesController < ApplicationController

  # skip_before_action :verify_authenticity_token, :only => [:create, :new]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end



  def create

   @article = Article.new(article_params)

   if @article.save
    redirect_to @article
   else
    render 'new' # 这里用render（而不是redirect_to），会把原来的数据传回给new这个页面

   end
  end

  def show

    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
