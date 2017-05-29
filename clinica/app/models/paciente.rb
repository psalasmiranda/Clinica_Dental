class Paciente < ApplicationRecord
  has_many :pacientes
  validates :nombres, presence: {:message => "INGRESE NOMBRES"}
  validates :rut, presence: {:message => "INGRESE RUT"}
  validates :correo, presence: {:message => "INGRESE CORREO"}
  validates :direccion, presence: {:message => "INGRESE DIRECCION"}
  validates :telefono, presence: {:message => "INGRESE TELEFONO"}
end
