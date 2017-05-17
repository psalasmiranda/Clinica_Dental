class Listado < ApplicationRecord
belongs_to :proovedor, foreign_key: :prooveedor_id
belongs_to :insumo, foreign_key: :insumo_id
end
