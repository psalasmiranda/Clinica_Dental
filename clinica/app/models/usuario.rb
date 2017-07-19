class Usuario < ApplicationRecord
  has_secure_password validations: false
  validates :password, presence: {message: 'Llenado Obligatorio'},
                       length: {minimum: 6,
                       message: 'Tu contraseña debe contener al menos 6 caracteres'}
  validates_confirmation_of :password, allow_blank: true, message: 'Contraseñas no coinciden'

  has_many :listados
  belongs_to :grado, foreign_key: :grado_id

  validates :alias, presence: {:message => "Llenado Obligatorio"}
  validates :alias,uniqueness: {:message => "Alias ya se encuentra en uso"}
  validates :alias, format: {with: /\A[0-9a-zA-Z}]+\z/,message: "Alias solo numeros y letras"}
  validates :alias, length: {minimum: 3, maximum: 10, :message => "El alias debe tener entre 3 y 10 caracteres"}


  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :rut,uniqueness: true, rut: true

  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /([\w\s]*)/,message: "Solo acepta letras"}
  validates :nombre, length: {minimum: 3, maximum: 15, :message => "El nombre debe tener entre 3 y 15 caracteres"}


  validates :ape_paterno, presence: {:message => "Llenado Obligatorio"}
  validates :ape_paterno, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  validates :ape_paterno, length: {minimum: 3, maximum: 10, :message => "El apellido paterno debe tener entre 3 y 10 caracteres"}

  validates :ape_materno, presence: {:message => "Llenado Obligatorio"}
  validates :ape_materno, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  validates :ape_materno, length: {minimum: 3, maximum: 10, :message => "El apellido materno debe tener entre 3 y 10 caracteres"}

  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, numericality: { :greater_than_or_equal_to =>2, message: "Numero no valido"}
  validates :telefono, numericality: {only_integer: true, message: "Solo numeros"}
  validates :telefono, length: {is: 9, message: "EL telefono debe tener 9 digitos"}


  validates :correo, presence: {:message => "Llenado Obligatorio"}
  validates :correo, format: {with: /[0-9A-Za-z^\#]+@.+\..+/i}, uniqueness: {case_sensitive: false}
  validates :correo, email: true

  validates :cargo, presence: {:message => "Llenado Obligatorio"}
  validates :cargo, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :password, presence: {:message => "Llenado Obligatorio"}

  validates :grado_id, presence: {:message => "Se debe ingresar el nivel de responsabilidad"}

end
