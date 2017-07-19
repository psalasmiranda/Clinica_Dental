class Agenda < ApplicationRecord
  belongs_to :area, foreign_key: :area_id
  belongs_to :paciente, foreign_key: :paciente_id
  validates :hora, presence: {:message => "LLenado Obligatorio"}


  validates :costo, presence: {:message => "LLenado Obligatorio"}
  validates :costo, numericality: {only_integer: true, message:"Solo numero enteros"}
  validates :costo, numericality: {:greater_than_or_equal_to =>0, message: "No se aceptan enteros negativos"},length: {minimun:1, maximum:6, message: "El precio debe ser de 1 a 6 digitos"}



end
