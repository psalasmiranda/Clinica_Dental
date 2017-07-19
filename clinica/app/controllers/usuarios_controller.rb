class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:mostrar, :editar, :update, :eliminar]
  before_action { authenticate_user!("usuario_vista") }
    def index
      #@usuarios= Usuario.all
      #se agrega where para que no muerte al usuario por defecto
      @usuarios = Usuario.where.not(alias: :root).order("cargo").page(params[:page]).per(3)
    end

    def mostrar
    end

    def nuevo
      @usuario= Usuario.new
      @grados= Grado.all
    end

    def editar
    end
    def crear
        @usuario = Usuario.create(usuario_params)
        respond_to do |format|
          if @usuario.save
            format.html {redirect_to @usuario, notice: 'Fue creado con mucho exito'}
          else
            format.html {render :nuevo}
          end
        end
    end
    def update
        respond_to do |format|
          if @usuario.update(usuario_params)
            format.html {redirect_to @usuario}
          else
            format.html {render :editar}
          end
        end
    end
    def eliminar
        @usuario.destroy
        respond_to do |format|
          format.html {redirect_to usuarios_url, notice: 'fue eliminado'}
        end
    end
    private

    def  set_usuario
      @usuario= Usuario.find(params[:id])
    end

    def usuario_params
      params.require(:usuario).permit(:alias, :nombre, :ape_paterno, :ape_materno,:rut,:telefono,:correo,:cargo,:medico,:password, :password_confirmation, :grado_id)
    end
end
