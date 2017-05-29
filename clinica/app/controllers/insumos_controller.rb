class InsumosController < ApplicationController

  def index
    @insumoss = Insumos.all
  end

end
