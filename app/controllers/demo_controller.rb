class DemoController < ApplicationController
  def index
    @array = [1,2,3,4,5]
    render('index')
  end


  def linkedinnn
    render('YunZhang _ LinkedIn')
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index') # go to first function
  end

  def linkedin
    redirect_to('http://www.linkedin.com/in/yun-zhang-claremont') # go to first function
  end

  def github
    redirect_to('https://github.com/yuzhangClaremont') # go to first function
  end
end
