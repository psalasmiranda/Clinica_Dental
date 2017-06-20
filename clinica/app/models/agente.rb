class Agente < ApplicationRecord
  validates :nombre, presence: {message => "Llenado Obligatorio"}
  validates :apellidos, presence: {message => "Llenado Obligatorio"}
  validates :rut, presence: {message => "Llenado Obligatorio"}
  validates :telefono, presence: {message => "Llenado Obligatorio"}
  validates :correo, presence: {message => "Llenado Obligatorio"}
  validates :direccion, presence: {message => "Llenado Obligatorio"}
end
