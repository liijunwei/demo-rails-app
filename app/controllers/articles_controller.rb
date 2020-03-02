class ArticlesController < ApplicationController

  # skip_before_action :verify_authenticity_token, :only => [:create, :new]


  def new
  end



  def create

    render plain: params[:article].inspect
    # render json: params
  end

end
