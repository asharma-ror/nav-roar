class RegistrationsController < Devise::RegistrationsController
  before_filter :authenticate_user!, :only => [:edit, :update]
  
  def update
    if params[:user][:avatar].present?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
      params[:user].delete("current_password")
      if current_user.update_attributes(params[:user])
        flash[:notice] = "Image uploaded successfully."
        redirect_to edit_user_registration_path and return
      else
        flash[:error] = current_user.errors.full_messages
        render :edit
      end
    else
      super
    end
  end
  
end