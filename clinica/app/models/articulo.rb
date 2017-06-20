class Articulo < ApplicationRecord
  belongs_to :insumo, foreign_key: :insumo_id
  belongs_to :agente, foreign_key: :agente_id
end
