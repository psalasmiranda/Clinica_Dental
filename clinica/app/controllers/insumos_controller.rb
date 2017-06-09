class InsumosController < ApplicationController

  def index
    @insumoss = Insumo.all
  end

end
