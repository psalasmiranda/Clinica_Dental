class SessionsController < ApplicationController
  def new
  end

  def create
  user = Usuario.find_by_alias(params[:alias])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:permiso_id] = user.grado_id
      redirect_to root_url
    else
      redirect_to root_url, :notice => "Contraseña o Nombre invalido"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Se ha finalizado la sesión correctamente"
  end
end
