class LeeController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:hook]

  def new

  end

  def create
    # @whatever
    # byebug
    # puts
    pass = "ljw"
    if my_params[:key_foo].include?(pass)
      redirect_to lee_index_path, notice: 'Pass token verified...'
    else
      render json: {mesage: "your key_foo do not have a #{pass}"}
    end
  end

  private
  def my_params
    params.require(:whatever).permit(:key_foo, :value_foo)
  end

end
