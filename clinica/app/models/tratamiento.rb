class Tratamiento < ApplicationRecord
  belongs_to :material, foreign_key: :material_id
  validates :descripcion, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
end
