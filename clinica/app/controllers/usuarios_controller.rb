class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:mostrar, :editar, :update, :eliminar]
  before_action { authenticate_user!("usuario_vista") }
    def index
      @usuarios= Usuario.all
      #se agrega where para que no muerte al usuario por defecto
      @usuarios = Usuario.where.not(alias: :root).order("cargo").page(params[:page]).per(5)
      
      if params[:tipo]
        @usuarios = Usuario.where("tipo  LIKE ?", params[:tipo])
      end
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
            format.html {redirect_to welcome_index_url, notice: 'Fue creado con mucho exito'}
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
      begin
          respond_to do |format|
          @usuario.destroy
          format.html {redirect_to welcome_index_url, notice: 'fue eliminado'}
        end
      rescue
          respond_to do |format|
          format.html {redirect_to volver_usuario_url, notice: 'Este registro se encuentra en uso, su eliminación se encuentra restringida'}
        end
      end

    end
    private

    def  set_usuario
      @usuario= Usuario.find(params[:id])
    end

    def usuario_params
      params.require(:usuario).permit(:alias, :nombre, :ape_paterno, :ape_materno,:rut,:telefono,:correo,:cargo,:password, :password_confirmation, :grado_id,  :hora_entrada, :hora_salida, :tipo, :fecha_ingreso, :Cariologia, :Endodoncia, :Gnatologia, :Implantologia_dental, :Odontogeriatria, :Odontologia_estetica, :Odontologia_forense, :Odontologia_preventiva, :Odontologia_restauradora,
      :Odontopediatria, :Periodoncia, :Radiologo_dentomaxilofacial, :Patologo_bucomaxilofacial, :Cirujano_maxilofacial, :Restauracion_dental, :Prostodoncista, :Ordotencista)
    end
end
