class AgendasController < ApplicationController
  before_action :set_agenda, only: [:mostrar, :editar, :update, :eliminar, :registro_editar, :update_registro]
  before_action except: [:registro, :registro_editar, :update_registro] do
    authenticate_user!("agenda_vista")
  end
  before_action :sinUsuario, only: [:registro, :registro_editar, :update_registro]
  
    def index
      #@agendas= Agenda.all
      @agendas = Agenda.order("fecha").page(params[:page]).per(5)
    end

    def mostrar
    end

    def registro
      @agendas= Agenda.all
    end

    def registro_editar
    end

    def update_registro
        respond_to do |format|
          if @agenda.update(agenda_registro_params)
            format.html {redirect_to registro_agenda_url}
          else
            format.html {render :nuevo}
          end
        end
    end

    def nuevo
      @horas= Hora.all   #where(alias: :root)
      @agenda= Agenda.new
    end

    def editar
    end
    def crear
        @horas= Hora.all
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
      params.require(:agenda).permit(:fecha, :usuario_id, :hora_id, :tratamiento_id, :paciente_id)
    end

    def agenda_registro_params
      params.require(:agenda).permit(:comentario)
    end
end
