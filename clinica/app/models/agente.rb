class Agente < ApplicationRecord
  has_many :agentes
  belongs_to :comuna, foreign_key: :comuna_id
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z\s]+\z/,message: "Solo acepta letras"}
  validates :nombre, length: {minimum: 3, maximum: 15, :message => "El nombre debe tener entre 3 y 15 caracteres"}

  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :rut,uniqueness: true, rut: true

  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, numericality: { :greater_than_or_equal_to => 2, message: "Numero no valido"}
  validates :telefono, numericality: {only_integer: true, message: "Solo numeros"}
  validates :telefono, length: {is: 9, message: "EL telefono debe tener 9 digitos"}

  validates :correo, presence: {:message => "Llenado Obligatorio"}
  validates :correo, format: {with: /[0-9A-Za-z^\#]+@.+\..+/i}, uniqueness: {case_sensitive: false}
  validates :correo, email: true


  
end
