class GastadosController < ApplicationController
  before_action :set_insumo, only: [:mostrar, :editar, :update, :eliminar]
  before_action { authenticate_user!("insumo_vista") }
    def index
      #@insumos= Insumo.all
      @gastado = Gastado.order("nombre").page(params[:page]).per(5)
      if params[:search]
      @gastado = Gastado.search(params[:search]).order("created_at DESC")
      end

    end


    def mostrar
    end

    def nuevo
        @variabe = params[:motivo]
        @gastado= Gastado.new
    end

    def editar
    end

    def crear
        @gastado = Gastado.create(insumo_params)
        respond_to do |format|
        @insumo = Insumo.find(@gastado.insumo_id)
        stock = @insumo.cantidad - @gastado.cantidad
        if @gastado.save
            if Insumo.update(@gastado.insumo_id, :cantidad => stock)
              format.html {redirect_to volver_editar_registro_url(@gastado.agenda_id), notice: 'Fue creado con mucho exito'}
            else
              format.html {render :nuevo}
            end
          else
            format.html {render :nuevo}
          end
        end
    end

    def update
        respond_to do |format|
          if @gastado.update(insumo_params)
            format.html {redirect_to volver_editar_registro_url(@gastado.agenda_id)}
          else
            format.html {render :nuevo}
          end
        end
    end

    def eliminar
      @insumo = Insumo.find(@gastado.insumo_id)
      stock = @insumo.cantidad + @gastado.cantidad
      if Insumo.update(@gastado.insumo_id, :cantidad => stock)
        @gastado.destroy
        respond_to do |format|
          format.html {redirect_to volver_editar_registro_url(@gastado.agenda_id), notice: 'fue eliminado'}
        end
      end
    end

    private

    def  set_insumo
      @gastado= Gastado.find(params[:id])
    end

    def insumo_params
      params.require(:gastado).permit(:cantidad, :agenda_id, :insumo_id)
    end

end
