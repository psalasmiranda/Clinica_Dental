class Tratamiento < ApplicationRecord
   has_many :materials
  validates :nombre, presence: {:message => "INGRESE NOMBRE"}
  validates :costo, presence: {:message => "INGRESE COSTO"}
  validates :descripcion, presence: {:message => "INGRESE DESCRIPCION"}
end
