class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:free]
  
  def free
  end

  def index
  end
end
