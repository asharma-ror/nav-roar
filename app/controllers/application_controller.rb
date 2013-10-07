class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def visit_home
    redirect_to dashboard_index_path if current_user
  end
end
