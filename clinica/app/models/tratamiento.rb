class Tratamiento < ApplicationRecord
  validates :descripcion, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
end
