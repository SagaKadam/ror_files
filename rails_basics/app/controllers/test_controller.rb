class TestController < ApplicationController
  def index
    @array = [1,2,3,4]
    render('index')
  end
end
