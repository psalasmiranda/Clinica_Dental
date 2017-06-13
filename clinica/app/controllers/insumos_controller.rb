class InsumosController < ApplicationController
before_action :set_insumo, only: [:mostrar, :editar, :update, :eliminar]
  def index
    @insumos= Insumo.all
  end

  def mostrar
  end

  def nuevo
    @insumo= Insumo.new
  end

  def editar
  end
  def crear
      @insumo = Insumo.create(insumo_params)
      respond_to do |format|
        if @insumo.save
          format.html {redirect_to @insumo, notice: 'Fue creado con mucho exito'}
        else
          format.html {render :nuevo}
        end
      end
  end
  def update
      respond_to do |format|
        if @insumo.update(insumo_params)
          format.html {redirect_to @insumo}
        else
          format.html {render :nuevo}
        end
      end
  end
  def eliminar
      @insumo.destroy
      respond_to do |format|
        format.html {redirect_to insumos_url, notice: 'fue eliminado'}
      end
  end
  private

  def  set_insumo
    @insumo= Insumo.find(params[:id])
  end

  def insumo_params
    params.require(:insumo).permit(:nombre, :cantidad, :costo, :ingreso, :vencimiento)
  end
end
