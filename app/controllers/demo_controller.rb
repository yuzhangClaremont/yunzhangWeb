class DemoController < ApplicationController
  def index
    render('template')
  end


  def template
    render('index')
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index') # go to first function
  end
end
