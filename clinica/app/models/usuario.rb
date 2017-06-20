class Usuario < ApplicationRecord
  has_many :listados
  has_many :grados
  validates :rut, presence: {:message => "Llenado Obligatorio"}

  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :apellidos, presence: {:message => "Llenado Obligatorio"}
  validates :apellidos, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :telefono, presence: {:message => "Llenado Obligatorio"}


  validates :correo, presence: {:message => "Llenado Obligatorio"}

  validates :cargo, presence: {:message => "Llenado Obligatorio"}
  validates :cargo, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  
  validates :contraseña, presence: {:message => "Llenado Obligatorio"}

end
