class Agente < ApplicationRecord
  has_many :agentes
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :apellidos, presence: {:message => "Llenado Obligatorio"}
  validates :apellidos, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :correo, presence: {:message => "Llenado Obligatorio"}
  validates :dirrecion, presence: {:message => "Llenado Obligatorio"}
end
