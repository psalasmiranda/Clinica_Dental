class Agente < ApplicationRecord
  belongs_to :listado, foreign_key: :listado_id
  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :apellido, presence: {:message => "Llenado Obligatorio"}
  validates :empresa, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :comuna, presence: {:message => "Llenado Obligatorio"}
  validates :direccion, presence: {:message => "Llenado Obligatorio"}
  validates :correo, presence: {:message => "Llenado Obligatorio"}

end
