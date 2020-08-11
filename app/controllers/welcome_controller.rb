class WelcomeController < ApplicationController
  # 展示首页
  def index
    # raise
    foo
    p "#{__method__} => #{name_foo}"
  rescue Exception => e
    # puts "=> ArgumentError rescued..."
    puts "=> #{e.message}"
    ap "#{e.backtrace.first}"
  # ensure
  #   p "#{__method__} => this piece of code has to be run.... => #{name_foo}"
  end


end
