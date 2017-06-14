class Insumo < ApplicationRecord
  belongs_to :material, foreign_key: :material_id
  belongs_to :listado, foreign_key: :listado_id
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :cantidad, presence: {:message => "Llenado Obligatorio"}
  validates :ingreso, presence: {:message => "Llenado Obligatorio"}
  validates :vencimiento, presence: {:message => "Llenado Obligatorio"}
  validates :costo, presence: {:message => "Llenado Obligatorio"}

end
