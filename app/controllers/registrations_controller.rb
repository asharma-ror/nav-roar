class RegistrationsController < Devise::RegistrationsController
  before_filter :authenticate_user!, :only => [:edit, :update]
  
  def update
    if params[:user][:avatar].present?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
      params[:user].delete("current_password")
      current_user.update_attributes(params[:user])
      flash[:notice] = "Image uploaded successfully."
      redirect_to edit_user_registration_path and return
    else
      super
    end
  end
  
end