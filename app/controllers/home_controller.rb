class HomeController < ApplicationController
  before_filter :visit_home, :only => [:index]
  layout 'home_layout'

  def index
  end

  def about_us
  end

  def pricing
  end

  def contact
  end

  def blog
  end
  
  def blogpost
  end

  def feature
  end

  def services
  end

  def portfolio
  end

  def portfolio_item
  end

  def coming_soon
  end
  
  def backgrounds
  end
end
