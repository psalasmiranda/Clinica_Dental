class Agenda < ApplicationRecord
  has_many :clientes
  has_many :tratamientos
  has_many :funcionarios
  validates :hora, presence: {:message => "Llenado Obligatorio"}
  validates :estado, presence: {:message => "Llenado Obligatorio"}
  validates :descripcion, presence: {:message => "Llenado Obligatorio"}
  validates :confirmacion, presence: {:message => "Llenado Obligatorio"}
end
