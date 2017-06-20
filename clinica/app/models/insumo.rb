class Insumo < ApplicationRecord
  has_many :articulos
  validates :cantidad, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :costo, presence: {:message => "Llenado Obligatorio"}
  validates :vencimiento, presence: {:message => "Llenado Obligatorio"}
  validates :ingreso, presence: {:message => "Llenado Obligatorio"}
end
