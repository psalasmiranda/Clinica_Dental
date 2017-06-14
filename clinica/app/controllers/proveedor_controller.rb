class ProveedorController < ApplicationController
  before_action :set_proveedor, only: [:mostrar, :editar, :update, :eliminar]
    def index
      @proveedors= Proveedor.all
    end

    def mostrar
    end

    def nuevo
      @proveedor= Proveedor.new
    end

    def editar
    end
    def crear
        @proveedor = Proveedor.create(proveedor_params)
        respond_to do |format|
          if @proveedor.save
            format.html {redirect_to @proveedor, notice: 'Fue creado con mucho exito'}
          else
            format.html {render :nuevo}
          end
        end
    end
    def update
        respond_to do |format|
          if @proveedor.update(proveedor_params)
            format.html {redirect_to @proveedor}
          else
            format.html {render :nuevo}
          end
        end
    end
    def eliminar
        @proveedor.destroy
        respond_to do |format|
          format.html {redirect_to proveedors_url, notice: 'fue eliminado'}
        end
    end
    private

    def  set_proveedor
      @proveedor= Proveedor.find(params[:id])
    end

    def proveedor_params
      params.require(:proveedor).permit(:nombre, :rut, :correo, :telefono, :direccion)
    end
  end
