class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "ljw", password: "123", except: [:index, :show]

  # skip_before_action :verify_authenticity_token, :only => [:create, :new]

  def index
    logger.info "---> entering [#{__method__}] action of article controller..."
    @articles = Article.all
  end

  def new
    logger.info "---> entering [#{__method__}] action of article controller..."
    @article = Article.new
  end

  def edit
    logger.info "---> entering [#{__method__}] action of article controller..."

    @article = Article.find(params[:id])
  end

  def create
    logger.info "---> entering [#{__method__}] action of article controller..."

   @article = Article.new(article_params)

   if @article.save
    logger.info "---> entering [#{__method__}] action of article controller..."

    redirect_to @article
   else
    render 'new' # 这里用render（而不是redirect_to），会把原来的数据传回给new这个页面

   end
  end

  def show
    logger.info "---> entering [#{__method__}] action of article controller..."

    @article = Article.find(params[:id])
  end

  def update
    logger.info "---> entering [#{__method__}] action of article controller..."

    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
