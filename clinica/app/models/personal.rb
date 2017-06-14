class Personal < ApplicationRecord
  belongs_to :agenda, foreign_key: :agenda_id
  belongs_to :grado, foreign_key: :grado_id
  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :apellidos, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :correo, presence: {:message => "Llenado Obligatorio"}
  validates :cargo, presence: {:message => "Llenado Obligatorio"}
  validates :contraseña, presence: {:message => "Llenado Obligatorio"}
  validates :edad, presence: {:message => "Llenado Obligatorio"}
end
