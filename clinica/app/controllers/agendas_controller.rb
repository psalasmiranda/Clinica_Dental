class AgendasController < ApplicationController
  before_action :set_agenda, only: [ :mostrar, :editar, :update, :eliminar,:registro_insumos, :update_registro_insumos , :registro_editar, :update_registro]
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

    def update_registro_insumos
      @agenda.insumos = params[:insumos]
      respond_to do |format|
        format.html {redirect_to registro_agenda_url}
      end
    end

    def registro_insumos
      @gastados = Gastado.all
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
          format.html {redirect_to listar_agenda_url, notice: 'fue eliminado'}
        end
    end
    private

    def  set_agenda
      @agenda= Agenda.find(params[:id])
    end

    def agenda_params
      params.require(:agenda).permit(:fecha, :usuario_id, :hora_id, :tratamiento_id, :paciente_id, :insumos)
    end

    def agenda_registro_params
      params.require(:agenda).permit(:comentario,
      :d55, :d54, :d53, :d52, :d51,
      :d61, :d62, :d63, :d64, :d65,
      :d85, :d84, :d83, :d82, :d81,
      :d71, :d72, :d73, :d74, :d75,
      :d18, :d17, :d16, :d15, :d14, :d13, :d12, :d11,
      :d21, :d22, :d23, :d24, :d25, :d26, :d27, :d28,
      :d38, :d37, :d36, :d35, :d34, :d33, :d32, :d31,
      :d41, :d42, :d43, :d44, :d45, :d46, :d47, :d48)
    end

end
