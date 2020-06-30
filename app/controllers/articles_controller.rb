class ArticlesController < ApplicationController

  # 基本的验证
  http_basic_authenticate_with name: "ljw", password: "123", except: [:index, :show]

  # skip_before_action :verify_authenticity_token, :only => [:create, :new]

  # 显示所有的文章
  def index
    logger.info "---> entering [#{__method__}] action of article controller..."
    @articles = Article.all

    respond_to do |format|
      format.html
      format.csv { send_data @articles.to_csv, filename: "users-#{Date.today}.csv" }
    end
  end

  # 显示新建文章的页面
  def new
    logger.info "---> entering [#{__method__}] action of article controller..."
    @article = Article.new
  end

  # 编辑页面
  def edit
    logger.info "---> entering [#{__method__}] action of article controller..."

    @article = Article.find(params[:id])
  end

  # 新建文章，存入数据库
  def create
   @article = Article.new(article_params)
   if @article.save
    logger.info "---> entering [#{__method__}] action of article controller..."

    redirect_to @article
   else
    render 'new' # 这里用render（而不是redirect_to），会把原来的数据传回给new这个页面
   end
  end

  # 显示某个文章的标题和内容
  def show
    logger.info "---> entering [#{__method__}] action of article controller..."

    @article = Article.find(params[:id])
  end

  # 更新文章
  def update
    logger.info "---> entering [#{__method__}] action of article controller..."

    @article = Article.find(params[:id])

    # 如果未通过article model的验证，则重定向至编辑文章的页面
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def home

  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
