class Comuna < ApplicationRecord
  has_many :pacientes
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /([\w\s]*)/,message: "Solo acepta letras"}
  validates :nombre, length: {minimum: 3, maximum: 20, :message => "La comuna debe tener entre 3 y 20 caracteres"}

end
