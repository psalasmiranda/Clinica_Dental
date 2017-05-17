class Tratamiento < ApplicationRecord
   has_many :materials
  VALIDATES :nombre, PRESENCE: {:MESSAGE => "INGRESE NOMBRE"}
  VALIDATES :costo, PRESENCE: {:MESSAGE => "INGRESE COSTO"}
  VALIDATES :descripcion, PRESENCE: {:MESSAGE => "INGRESE DESCRIPCION"}
end
