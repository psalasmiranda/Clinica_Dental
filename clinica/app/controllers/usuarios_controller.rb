class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:mostrar, :editar, :update, :eliminar]
    def index
      @usuarios= Usuario.all
    end

    def mostrar
    end

    def nuevo
      @usuario= Usuario.new
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
            format.html {render :nuevo}
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
      params.require(:usuario).permit(:nombre, :apellidos,:rut,:telefono,:correo,:cargo,:contraseña)
    end
end
