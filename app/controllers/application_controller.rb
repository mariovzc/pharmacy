# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def root_path
    "/#{current_user.role.name.downcase}"
  end

  def not_authenticated
    flash[:warning] = 'You have to authenticate to access this page.'
    redirect_to log_in_path
  end
end
