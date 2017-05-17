class Insumos < ApplicationRecord
  has_many :listados
   has_many :materials
  VALIDATES :nomre, PRESENCE: {:MESSAGE => "INGRESE NOMBRES"}
  VALIDATES :cantidad, PRESENCE: {:MESSAGE => "INGRESE CANTIDAD"}
  VALIDATES :fecha_ing, PRESENCE: {:MESSAGE => "INGRESE FECHA INGRESO"}
end
