class LeeController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:hook]
  around_action :worker1, only: :new
  around_action :worker2, only: :new

  # http://localhost:3000/lee/new
  def new
    puts "Inside new action..."
    render json: {demo: "xxxx"}, status: 200
  end

  def create
    # @whatever
    # byebug
    # puts
    pass = "ljw"
    # if my_params[:key_foo].include?(pass)
    #   redirect_to lee_index_path, notice: 'Pass token verified...'
    # else
    #   render json: {mesage: "your key_foo do not have a #{pass}"}
    # end
    @article = Article.new(title: my_params[:key_foo],text: my_params[:value_foo])
    if @article.save
      redirect_to lee_index_path, notice: 'You Just create an article record using another controller...'
    else
      render 'new'
    end

  end

  private
  def my_params
    params.require(:whatever).permit(:key_foo, :value_foo)
  end

  def worker1
    puts "Inside worker1... before yield"
    yield
    puts "Inside worker1... after yield"
  end

  def worker2
    puts "Inside worker2... before yield"
    yield
    puts "Inside worker2... after yield"
  end

end
