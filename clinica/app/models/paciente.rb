class Paciente < ApplicationRecord
  has_many :historias
  belongs_to :comuna, foreign_key: :comuna_id
  has_many :agendas
  validates :rut, presence: {:message => "Llenado Obligatorio"}

  validates :nombre, presence: {:message => "LLenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :materna, presence: {:message => "LLenado Obligatorio"}
  validates :materna, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :paterno, presence: {:message => "LLenado Obligatorio"}
  validates :paterno, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :sexo, presence: {:message => "LLenado Obligatorio"}

  validates :telefono, presence: {:message => "LLenado Obligatorio"}

  validates :direccion, presence: {:message => "LLenado Obligatorio"}
  
  validates :edad, presence: {:message => "LLenado Obligatorio"}
  validates :edad, numericality: {only_integer: true, message:"Solo numero enteros"}
  validates :edad, numericality: {:greater_than_or_equal_to =>1, message: "No se aceptan menores a 1 año"}
  validate :edad_validacion



  def edad_validacion
    if self.edad.present?
      if self.edad >= 100
        errors.add(:edad, "no puede ser mayor a 100 años")
        return false
      end
    end
  end


end
