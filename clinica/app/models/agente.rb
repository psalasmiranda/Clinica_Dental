class Agente < ApplicationRecord
  has_many :insumos, dependent: :restrict_with_exception
  belongs_to :comuna, foreign_key: :comuna_id
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format: {with: /\A[0-9a-zA-Z\s}]+\z/}
  validates :nombre, length: {minimum: 3, maximum: 15, :message => "El nombre debe tener entre 3 y 15 caracteres"}

  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :rut,uniqueness: true, rut: true

  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, numericality: {only_integer: true, message: "Solo numeros"}
  validates :telefono, length: {is: 9, message: "EL telefono debe tener 9 digitos"}
  validate :telefono_validacion

  def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("nombre LIKE ?", "%#{search}%")
  end
  validates :correo, presence: {:message => "Llenado Obligatorio"}
  validates :correo, format: {with: /[0-9A-Za-z^\#]+@.+\..+/i}, uniqueness: {case_sensitive: false}
  validates :correo, email: true

  validates :dirrecion, presence: {:message => "LLenado Obligatorio"}
  validates :dirrecion, format: {with: /\A[a-zA-Z\s}]+\z/,message: "Solo letras"}
  validates :dirrecion, length: {minimum: 3, maximum: 15, :message => "La direccion debe tener entre 3 y 15 caracteres"}


  validates :numero, presence: {:message => "Llenado Obligatorio"}
  validates :numero, numericality: {only_integer: true, message: "Solo ingrese numeros"}
  validates :numero, length: {minimum: 1, maximum: 5, :message => "El numero debe tener entre 1 y 5 caracteres"}
  validates :numero, numericality: {:greater_than_or_equal_to =>1, message: "No se aceptan numeros que partan con 0"}

  validates :comuna_id, presence: {:message => "LLenado Obligatorio"}

  def telefono_validacion
    if self.telefono.present?
      if self.telefono < 222000000 || self.telefono > 300000000
        if self.telefono <940000000
          errors.add(:telefono, "Error, el telefono debe comenzar en 22... o 9...")
        end
      end
    end
  end

end
