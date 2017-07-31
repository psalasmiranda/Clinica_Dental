class TratamientosController < ApplicationController
  before_action :set_tratamiento, only: [:mostrar, :editar, :update, :eliminar]
  before_action { authenticate_user!("tratamiento_vista") }
    def index
      #@tratamientos= Tratamiento.all
      @tratamientos = Tratamiento.order("nombre").page(params[:page]).per(3)
      if params[:search]
      @tratamientos = Tratamiento.search(params[:search]).order("created_at DESC").page(params[:page]).per(3)
    end
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
      begin
        @tratamiento.destroy
        respond_to do |format|
          format.html {redirect_to tratamientos_url, notice: 'fue eliminado'}
        end
      rescue
          respond_to do |format|
          format.html {redirect_to volver_tratamiento_url, notice: 'Este registro se encuentra en uso, su eliminación se encuentra restringida'}
        end
      end
    end
    private

    def  set_tratamiento
      @tratamiento= Tratamiento.find(params[:id])
    end

    def tratamiento_params
      params.require(:tratamiento).permit(:nombre, :descripcion,:costo, :prevision)
    end

end
