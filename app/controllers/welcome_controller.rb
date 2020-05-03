class WelcomeController < ApplicationController
  # 展示首页
  def index

    puts "hh"
    byebug
    Holidays.on(Date.civil(2008, 4, 25), :au)


    render json: {"code": 200}
  end
end
