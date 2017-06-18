class Paciente < ApplicationRecord

  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :apellidos, presence: {:message => "Llenado Obligatorio"}
  validates :sexo, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :comuna, presence: {:message => "Llenado Obligatorio"}
  validates :direccion, presence: {:message => "Llenado Obligatorio"}
  validates :edad, presence: {:message => "Llenado Obligatorio"}
end
