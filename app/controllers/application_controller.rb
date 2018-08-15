class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def root_path
    case current_user.role.name
    when 'Admin'
      '/admin'
    when 'Manager'
    when 'Seller'
    end
  end

  def not_authenticated
    flash[:warning] = 'You have to authenticate to access this page.'
    redirect_to log_in_path
  end
end
