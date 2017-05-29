class Insumos < ApplicationRecord
  has_many :listados
   has_many :materials
  validates  :nomre, presence: {:message => "INGRESE NOMBRES"}
  validates  :cantidad, presence: {:message => "INGRESE CANTIDAD"}
  validates  :fecha_ing, presence: {:message => "INGRESE FECHA INGRESO"}
end
