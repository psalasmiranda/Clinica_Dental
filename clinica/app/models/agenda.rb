class Agenda < ApplicationRecord
  has_many :pacientes
  has_many :tratamientos
  has_many :personals
  validates :hora, presence: {:message => "Llenado Obligatorio"}
  validates :costo, presence: {:message => "Llenado Obligatorio"}
end
