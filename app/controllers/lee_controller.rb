class LeeController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:hook]

  def hook
    puts "neo..."
    puts "="*8
    say_hi
  end


  private
  def say_hi
    # controller里的方法, 可以直接用params这个参数
    puts "#{__method__} => #{params[:foo]}"
  end
end
