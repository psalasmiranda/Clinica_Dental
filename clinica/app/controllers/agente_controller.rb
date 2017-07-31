class AgenteController < ApplicationController
  before_action :set_agente, only: [:mostrar, :editar, :update, :eliminar]
  before_action { authenticate_user!("proveedor_vista") }
  def index
    #@agentes= Agente.all
    @agentes = Agente.order("nombre").page(params[:page]).per(5)
    if params[:search]
    @agentes = Agente.search(params[:search]).order("created_at DESC").page(params[:page]).per(3)
    end
  end

  def mostrar
  end

  def nuevo
    @agente= Agente.new
  end

  def editar
  end
  def crear
      @agente = Agente.create(agente_params)
      respond_to do |format|
        if @agente.save

          format.html {redirect_to @agente, notice: 'Fue creado con mucho exito'}
        else
          format.html {render :nuevo}
        end
      end
  end
  def update
      respond_to do |format|
        if @agente.update(agente_params)
          format.html {redirect_to @agente}
        else
          format.html {render :nuevo}
        end
      end
  end
  def eliminar
    begin
      @agente.destroy
      respond_to do |format|
        format.html {redirect_to agentes_url, notice: 'fue eliminado'}
      end
    rescue
        respond_to do |format|
        format.html {redirect_to volver_agente_url, notice: 'Este registro se encuentra en uso, su eliminación se encuentra restringida'}
      end
    end
  end
  private

  def  set_agente
    @agente= Agente.find(params[:id])
  end

  def agente_params
    params.require(:agente).permit(:nombre, :telefono,:correo, :rut, :dirrecion ,:numero, :comuna_id)
  end
end
