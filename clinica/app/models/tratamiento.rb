class Tratamiento < ApplicationRecord
  has_many :historias
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :descripcion, presence: {:message => "Llenado Obligatorio"}
  validates :descripcion, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
end
