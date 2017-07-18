class Agente < ApplicationRecord
  has_many :agentes
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z \s]+\z/,message: "Solo acepta letras"}

  validates :apellidos, presence: {:message => "Llenado Obligatorio"}
  validates :apellidos, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :rut,uniqueness: true, rut: true

  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, numericality: { :greater_than_or_equal_to => 2, message: "Numero no valido"}
  validates :telefono, numericality: {only_integer: true, message: "Solo numeros"}
  validates :telefono, length: {is: 9, message: "EL telefono debe tener 9 digitos"}

  validates :correo, presence: {:message => "Llenado Obligatorio"}


  validates :dirrecion, presence: {:message => "Llenado Obligatorio"}
  validates :dirrecion, format: {with: /\A[0-9a-zA-Z\s}]+\z/,message: "Direccion no valida"}




end
