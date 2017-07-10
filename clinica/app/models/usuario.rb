class Usuario < ApplicationRecord
  has_secure_password validations: false
  validates :password, presence: {message: 'Llenado Obligatorio'},
                       length: {minimum: 6,
                       message: 'Tu contraseña debe contener al menos 6 caracteres'}
  validates_confirmation_of :password, allow_blank: true, message: 'Contraseñas no coinciden'

  has_many :listados
  belongs_to :grado, foreign_key: :grado_id
  
  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :rut,uniqueness: true, rut: true

  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :apellidos, presence: {:message => "Llenado Obligatorio"}
  validates :apellidos, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, numericality: { :greater_than_or_equal_to => 0, message: "Numeros que parten de 0 no validos"}
  validates :telefono, numericality: {only_integer: true, message: "Solo numeros"}
  validates :telefono, length: {is: 11, message: "EL telefono debe tener 11 digitos"}


  validates :correo, presence: {:message => "Llenado Obligatorio"}

  validates :cargo, presence: {:message => "Llenado Obligatorio"}
  validates :cargo, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :password, presence: {:message => "Llenado Obligatorio"}

  validates :grado_id, presence: {:message => "Se debe ingresar el nivel de responsabilidad"}

end
