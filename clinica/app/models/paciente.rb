class Paciente < ApplicationRecord
  has_many :historias
  belongs_to :comuna, foreign_key: :comuna_id
  has_many :agendas

  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :rut,uniqueness: true, rut: true

  validates :nombre, presence: {:message => "LLenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z\s]+\z/,message: "Solo acepta letras"}
  validates :nombre, length: {minimum: 3, maximum: 15, :message => "El nombre debe tener entre 3 y 15 caracteres"}


  validates :materna, presence: {:message => "LLenado Obligatorio"}
  validates :materna, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  validates :materna, length: {minimum: 3, maximum: 15, :message => "El apellido materno debe tener entre 3 y 15 caracteres"}


  validates :paterno, presence: {:message => "LLenado Obligatorio"}
  validates :paterno, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  validates :paterno, length: {minimum: 3, maximum: 15, :message => "El apellido paterno debe tener entre 3 y 15 caracteres"}


  validates :sexo, presence: {:message => "LLenado Obligatorio"}

  validates :telefono, presence: {:message => "LLenado Obligatorio"}
  validates :telefono, numericality: { :greater_than_or_equal_to => 0, message: "Numeros que parten de 0 no validos"}
  validates :telefono, numericality: {only_integer: true, message: "Solo numeros"}
  validates :telefono, length: {is: 11, message: "EL telefono debe tener 11 digitos"}

  validates :direccion, presence: {:message => "LLenado Obligatorio"}
  validates :dirrecion, format: {with: /\A[0-9a-zA-Z\s}]+\z/,message: "Direccion no valida no acepta #"}
  validates :dirrecion, length: {minimum: 7, maximum: 30, :message => "La direccion debe tener entre 7 y 30 caracteres"}


  validates :edad, presence: {:message => "LLenado Obligatorio"}
  validates :edad, numericality: {only_integer: true, message:"Solo numero enteros"}
  validates :edad, numericality: {:greater_than_or_equal_to =>1, message: "No se aceptan menores a 1 año"}
  validate :edad_validacion

  validates :comuna_id, presence: {:message => "LLenado Obligatorio"}

  def edad_validacion
    if self.edad.present?
      if self.edad >= 100
        errors.add(:edad, "no puede ser mayor a 100 años")
        return false
      end
    end
  end


end
