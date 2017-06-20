class AgenteController < ApplicationController
  before_action :set_agente, only: [:mostrar, :editar, :update, :eliminar]
  def index
    @agentes= Agente.all
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
      @agente.destroy
      respond_to do |format|
        format.html {redirect_to agentes_url, notice: 'fue eliminado'}
      end
  end
  private

  def  set_agente
    @agente= Agente.find(params[:id])
  end

  def agente_params
    params.require(:agente).permit(:nombre,:apellidos, :telefono,:correo, :rut,:dirrecion)
  end
end
