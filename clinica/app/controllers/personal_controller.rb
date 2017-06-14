class PersonalController < ApplicationController
  before_action :set_personal, only: [:mostrar, :editar, :update, :eliminar]
    def index
      @personals= Personal.all
    end

    def mostrar
    end

    def nuevo
      @personal= Personal.new
    end

    def editar
    end
    def crear
        @personal = Personal.create(personal_params)
        respond_to do |format|
          if @personal.save
            format.html {redirect_to @personal, notice: 'Fue creado con mucho exito'}
          else
            format.html {render :nuevo}
          end
        end
    end
    def update
        respond_to do |format|
          if @personal.update(personal_params)
            format.html {redirect_to @personal}
          else
            format.html {render :nuevo}
          end
        end
    end
    def eliminar
        @personal.destroy
        respond_to do |format|
          format.html {redirect_to personals_url, notice: 'fue eliminado'}
        end
    end
    private

    def  set_personal
      @personal= Personal.find(params[:id])
    end

    def personal_params
      params.require(:personal).permit(:nombre, :apellidos, :telefono, :rut, :edad, :correo, :contraseña, :cargo)
    end
  end
