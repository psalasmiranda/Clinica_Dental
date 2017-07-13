class Comuna < ApplicationRecord
  has_many :pacientes
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /([\w\s]*)/,message: "Solo acepta letras"}
end
