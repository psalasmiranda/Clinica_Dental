class GradosController < ApplicationController
  before_action :set_grado, only: [:mostrar, :editar, :update, :eliminar]
  before_action { authenticate_user!("grado_vista") }
    def index
      #@grados= Grado.all
      @grados = Grado.order("rol").page(params[:page]).per(5)
    end

    def mostrar
    end

    def nuevo
      @grado= Grado.new
    end

    def editar
    end
    def crear
        @grado = Grado.create(grado_params)
        respond_to do |format|
          if @grado.save
            format.html {redirect_to @grado, notice: 'Fue creado con mucho exito'}
          else
            format.html {render :nuevo}
          end
        end
    end
    def update
        respond_to do |format|
          if @grado.update(grado_params)
            format.html {redirect_to @grado}
          else
            format.html {render :nuevo}
          end
        end
    end
    def eliminar
        @grado.destroy
        respond_to do |format|
          format.html {redirect_to grados_url, notice: 'fue eliminado'}
        end
    end
    private

    def  set_grado
      @grado= Grado.find(params[:id])
    end

    def grado_params
      params.require(:grado).permit(:rol, :agenda_vista, :insumo_vista, :paciente_vista, :proveedor_vista, :tratamiento_vista)
    end
  end
