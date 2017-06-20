class Tratamiento < ApplicationRecord
  has_many :historias
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :descripcion, presence: {:message => "Llenado Obligatorio"}
end
