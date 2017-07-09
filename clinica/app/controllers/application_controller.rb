class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def current_user
      @current_user ||= Usuario.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
  end

  def authenticate_user! (as)
    if current_user.nil?
      redirect_to new_session_path, :notice => "Acceso no autorizado, por favor inicie sesión"
    else
      @permiso = Grado.find(current_user.grado_id)
      if !@permiso[as] || !@permiso['rol']=="Administradores"
        redirect_to new_session_path, :notice => "No posee los permisos para acceder #{as}"
      end
    end
  end
  def menu! (as)
      @permiso = Grado.find(current_user.grado_id)
      @permiso[as] || @permiso['rol']=="Administradores"
  end
