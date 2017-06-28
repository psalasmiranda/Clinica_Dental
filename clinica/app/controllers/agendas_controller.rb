class AgendasController < ApplicationController
  before_action :set_agenda, only: [:mostrar, :editar, :update, :eliminar]
  before_action { authenticate_user!("agenda_vista") }
    def index
      @agendas= Agenda.all
    end

    def mostrar
    end

    def nuevo
      @agenda= Agenda.new
    end

    def editar
    end
    def crear
        @agenda = Agenda.create(agenda_params)
        respond_to do |format|
          if @agenda.save
            format.html {redirect_to @agenda, notice: 'Fue creado con mucho exito'}
          else
            format.html {render :nuevo}
          end
        end
    end
    def update
        respond_to do |format|
          if @agenda.update(agenda_params)
            format.html {redirect_to @agenda}
          else
            format.html {render :nuevo}
          end
        end
    end
    def eliminar
        @agenda.destroy
        respond_to do |format|
          format.html {redirect_to agendas_url, notice: 'fue eliminado'}
        end
    end
    private

    def  set_agenda
      @agenda= Agenda.find(params[:id])
    end

    def agenda_params
      params.require(:agenda).permit(:hora, :costo)
    end
end
