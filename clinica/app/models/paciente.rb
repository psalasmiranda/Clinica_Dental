class Paciente < ApplicationRecord
  has_many :historias
  belongs_to :comuna, foreign_key: :comuna_id
  has_many :agendas, dependent: :restrict_with_exception

  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :rut,uniqueness: true, rut: true

  validates :nombre, presence: {:message => "LLenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z\s]+\z/,message: "Solo acepta letras"}
  validates :nombre, length: {minimum: 3, maximum: 15, :message => "El nombre debe tener entre 3 y 15 caracteres"}


  validates :materna, presence: {:message => "LLenado Obligatorio"}
  validates :materna, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  validates :materna, length: {minimum: 3, maximum: 15, :message => "El apellido materno debe tener entre 3 y 15 caracteres"}

  def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("rut LIKE ?", "%#{search}%")
  end
  validates :paterno, presence: {:message => "LLenado Obligatorio"}
  validates :paterno, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  validates :paterno, length: {minimum: 3, maximum: 15, :message => "El apellido paterno debe tener entre 3 y 15 caracteres"}


  validates :sexo, presence: {:message => "LLenado Obligatorio"}


  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, numericality: {only_integer: true, message: "Solo numeros"}
  validates :telefono, length: {is: 9, message: "EL telefono debe tener 9 digitos"}
  validate :telefono_validacion
  #ldeflmfdñlfds


  validates :direccion, presence: {:message => "LLenado Obligatorio"}
  validates :direccion, format: {with: /\A[a-zA-Z\s}]+\z/,message: "Solo letras"}
  validates :direccion, length: {minimum: 3, maximum: 20, :message => "La direccion debe tener entre 3 y 20 caracteres"}

  validates :numero, presence: {:message => "Llenado Obligatorio"}
  validates :numero, numericality: {only_integer: true, message: "Solo numeros"}
  validates :numero, length: {minimum: 1, maximum: 5, :message => "El numero debe tener entre 1 y 5 caracteres"}
  validates :numero, numericality: {:greater_than_or_equal_to =>1, message: "No se aceptan numeros que partan con 0"}


  validates :edad, presence: {:message => "LLenado Obligatorio"}
  validates :edad, numericality: {only_integer: true, message:"Solo numero enteros"}
  validates :edad, numericality: {:greater_than_or_equal_to =>1, message: "No se aceptan menores a 1 año"}
  validate :edad_validacion

  validates :comuna_id, presence: {:message => "LLenado Obligatorio"}

  def edad_validacion
    if self.edad.present?
      if self.edad >= 100
        errors.add(:edad, "No puede ser mayor a 100 años")
        return false
      end
    end
  end

  def telefono_validacion
    if self.telefono.present?
      if self.telefono < 222000000 || self.telefono > 300000000
        if self.telefono <940000000
          errors.add(:telefono, "Error, el telefono debe comenzar en 22... o 9...")
        end
      end
    end
  end
  def name_full
    "#{rut} #{nombre} #{paterno}"
  end


end
