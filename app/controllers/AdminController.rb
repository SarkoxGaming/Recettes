class AdminController < ApplicationController
  before_action :is_admin?
  
  private
  def is_admin?

      unless user_signed_in?
        flash.alert = "Sorry, you don't have permissions to perform this action."
        redirect_to root_path
    
      else
        unless current_user.is_admin?
          flash.alert = "Sorry, you don't have permissions to perform this action."
          redirect_to root_path
        end
      end
  end
end
  