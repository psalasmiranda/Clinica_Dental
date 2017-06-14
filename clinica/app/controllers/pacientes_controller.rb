class PacientesController < ApplicationController
  before_action :set_paciente, only: [:mostrar, :editar, :update, :eliminar]
    def index
      @pacientes= Paciente.all
    end

    def mostrar
    end

    def nuevo
      @paciente= Paciente.new
    end

    def editar
    end
    def crear
        @paciente = Paciente.create(paciente_params)
        respond_to do |format|
          if @paciente.save
            format.html {redirect_to @paciente, notice: 'Fue creado con mucho exito'}
          else
            format.html {render :nuevo}
          end
        end
    end
    def update
        respond_to do |format|
          if @paciente.update(paciente_params)
            format.html {redirect_to @paciente}
          else
            format.html {render :nuevo}
          end
        end
    end
    def eliminar
        @paciente.destroy
        respond_to do |format|
          format.html {redirect_to pacientes_url, notice: 'fue eliminado'}
        end
    end
    private

    def  set_paciente
      @paciente= Paciente.find(params[:id])
    end

    def paciente_params
      params.require(:paciente).permit(:nombre, :apellidos, :telefono, :rut, :edad, :sexo, :comuna, :direccion)
    end
end