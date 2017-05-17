class Tratamiento < ApplicationRecord
  VALIDATES :nombre, PRESENCE: {:MESSAGE => "INGRESE NOMBRE"}
  VALIDATES :costo, PRESENCE: {:MESSAGE => "INGRESE COSTO"}
  VALIDATES :descripcion, PRESENCE: {:MESSAGE => "INGRESE DESCRIPCION"}
end
