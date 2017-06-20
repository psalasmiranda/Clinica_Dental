class Tratamiento < ApplicationRecord
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :descripcion, presence: {:message => "Llenado Obligatorio"}
end
