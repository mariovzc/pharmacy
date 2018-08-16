# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
  end

  def create
    if login(params[:email], params[:password])
      flash[:success] = 'Bienvenido'
      redirect_to root_path
    else
      flash.now[:warning] = 'Correo o contraseña incorrectos'
      render 'new'
    end
  end

  def destroy
    logout
    flash[:success] = 'Adios!'
    redirect_to log_in_path
  end
end
