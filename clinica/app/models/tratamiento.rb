class Tratamiento < ApplicationRecord
  has_many :historias
  has_many :agendas, dependent: :restrict_with_exception
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /\A[0-9a-zA-Z\s]+\z/,message: "Solo acepta letras"}
  validates :nombre, length: {minimum: 3, maximum: 15, :message => "El nombre debe tener entre 3 y 15 caracteres"}


  validates :descripcion, presence: {:message => "Llenado Obligatorio"}
  validates :descripcion, format:{with: /\A[0-9a-zA-Z\s]+\z/,message: "Solo acepta letras"}
  validates :descripcion, length: {minimum: 7, maximum: 30, :message => "La descripcion debe tener entre 7 y 30 caracteres"}

  validates :costo, presence: {:message => "Llenado Obligatorio"}
  validates :costo, numericality: {only_integer: true, message: "Solo valores enteros"},length: {minimun:1, maximum:8, message: "El precio debe ser de 1 a 8 digitos"}
  validates :costo, numericality: {:greater_than_or_equal_to =>0, message: "No se aceptan valores negativos"}

  def name_full
    "#{nombre} #{prevision}"
  end

end
