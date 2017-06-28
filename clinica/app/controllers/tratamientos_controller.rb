class TratamientosController < ApplicationController
  before_action :set_tratamiento, only: [:mostrar, :editar, :update, :eliminar]
  before_action { authenticate_user!("tratamiento_vista") }
    def index
      @tratamientos= Tratamiento.all
    end

    def mostrar
    end

    def nuevo
      @tratamiento= Tratamiento.new
    end

    def editar
    end
    def crear
        @tratamiento = Tratamiento.create(tratamiento_params)
        respond_to do |format|
          if @tratamiento.save
            format.html {redirect_to @tratamiento, notice: 'Fue creado con mucho exito'}
          else
            format.html {render :nuevo}
          end
        end
    end
    def update
        respond_to do |format|
          if @tratamiento.update(tratamiento_params)
            format.html {redirect_to @tratamiento}
          else
            format.html {render :nuevo}
          end
        end
    end
    def eliminar
        @tratamiento.destroy
        respond_to do |format|
          format.html {redirect_to tratamientos_url, notice: 'fue eliminado'}
        end
    end
    private

    def  set_tratamiento
      @tratamiento= Tratamiento.find(params[:id])
    end

    def tratamiento_params
      params.require(:tratamiento).permit(:nombre, :descripcion)
    end

end
