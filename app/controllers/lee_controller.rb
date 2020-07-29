class LeeController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:hook]

  def hook
    puts "neo..."
    puts "="*8
    say_hi
  end


  private
  def say_hi
    puts "#{__method__} => #{params[:foo]}"
  end
end
