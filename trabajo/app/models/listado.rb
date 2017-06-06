class Listado < ApplicationRecord
  has_many :agentes
  has_many :insumos
end
