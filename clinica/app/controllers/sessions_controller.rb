class SessionsController < ApplicationController
  def new
  end

  def create
  user = Usuario.find_by_nombre(params[:nombre])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:permiso_id] = user.grado_id
      redirect_to root_url
    else
      flash.now.alert = "Contraseña o Nombre invalido"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_url, :notice => "Se ha finalizado la sesión correctamente"
  end
end
