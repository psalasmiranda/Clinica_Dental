class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def current_user
      if Usuario.exists?(session[:user_id])
        @current_user ||= Usuario.find(session[:user_id]) if session[:user_id]
        end
      end
    helper_method :current_user
  end

  def authenticate_user! (as)
    if current_user.nil?
      redirect_to root_path, :notice => "Acceso no autorizado, por favor inicie sesión"
    else
      @permiso = Grado.find(current_user.grado_id)
      if  @permiso['rol']!="Administradores"
        if !@permiso[as]
        redirect_to root_path, :notice => "No posee los permisos para acceder #{as}"
        end
      end
    end
  end
  def menu! (as)
      @permiso = Grado.find(current_user.grado_id)
      @permiso[as] || @permiso['rol']=="Administradores"
  end


def sinUsuario
  if current_user.nil?
    redirect_to root_path, :notice => "Acceso no autorizado, por favor inicie sesión"
  end
end
