class Usuario < ApplicationRecord
  has_secure_password validations: false
  validates :password, presence: {message: 'Llenado Obligatorio'},
                       length: {minimum: 6,
                       message: 'Tu contraseña debe contener al menos 6 caracteres'}, on: :crear
  validates_confirmation_of :password, allow_blank: true, message: 'Contraseñas no coinciden', on: :crear

  #has_many :listados
  has_many :agendas, dependent: :restrict_with_exception #, dependent: :nullify destroy
  belongs_to :grado, foreign_key: :grado_id

  validates :alias, presence: {:message => "Llenado Obligatorio"}
  validates :alias,uniqueness: {:message => "Alias ya se encuentra en uso"}
  validates :alias, format: {with: /\A[0-9a-zA-Z}]+\z/,message: "Alias solo numeros y letras"}
  validates :alias, length: {minimum: 3, maximum: 10, :message => "El alias debe tener entre 3 y 10 caracteres"}


  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :rut,uniqueness: { scope: [:rut],
    message: "Este rut ya se encuentra registrado" }

  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /([\w\s]*)/,message: "Solo acepta letras"}
  validates :nombre, length: {minimum: 3, maximum: 15, :message => "El nombre debe tener entre 3 y 15 caracteres"}


  validates :ape_paterno, presence: {:message => "Llenado Obligatorio"}
  validates :ape_paterno, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  validates :ape_paterno, length: {minimum: 3, maximum: 15, :message => "El apellido paterno debe tener entre 3 y 15 caracteres"}

  validates :ape_materno, presence: {:message => "Llenado Obligatorio"}
  validates :ape_materno, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  validates :ape_materno, length: {minimum: 3, maximum: 15, :message => "El apellido materno debe tener entre 3 y 15 caracteres"}

  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, numericality: {only_integer: true, message: "Solo numeros"}
  validates :telefono, length: {is: 9, message: "EL telefono debe tener 9 digitos"}
  validate :telefono_validacion

  validates :correo, presence: {:message => "Llenado Obligatorio"}
  validates :correo, format: {with: /[0-9A-Za-z^\#]+@.+\..+/i}, uniqueness: {case_sensitive: false}
  validates :correo, email: true

  validates :cargo, presence: {:message => "Llenado Obligatorio"}
  validates :cargo, format:{with: /\A[a-zA-Z]+\z/,message: "Solo ingrese  letras"}
  validates :cargo, length: {minimum: 3, maximum: 20, :message => "El cargo debe tener entre 3 y 20 caracteres"}


  validates :password, presence: {:message => "Llenado Obligatorio"}, on: :crear

  validates :hora_entrada, presence: {:message => "Llenado Obligatorio"}
  validates :hora_salida, presence: {:message => "Llenado Obligatorio"}

  validates :grado_id, presence: {:message => "Error, debe ingresar el nivel de responsabilidad"}

  validate :validacion_pasado

  def validacion_pasado
    if self.hora_entrada.present? && self.hora_salida.present?
      if self.hora_entrada > self.hora_salida
        errors.add(:hora_entrada,"Error, no puede ingresar despues del Horario de Salida")
        return false
      end
    end
  end

  def telefono_validacion
    if self.telefono.present?
      if self.telefono < 222000000 || self.telefono > 300000000
        if self.telefono <940000000
          errors.add(:telefono, "Error, los telefonos deben partir en 22... o 9...")
        end
      end
    end
  end
  def name_full
    "#{nombre} #{ape_paterno}"
  end



end
