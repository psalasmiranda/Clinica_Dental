class Tratamiento < ApplicationRecord
  has_many :historias
  has_many :agendas
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z\s]+\z/,message: "Solo acepta letras"}
  validates :nombre, length: {minimum: 3, maximum: 15, :message => "El nombre debe tener entre 3 y 15 caracteres"}


  validates :descripcion, presence: {:message => "Llenado Obligatorio"}
  validates :descripcion, format:{with: /\A[a-zA-Z\s]+\z/,message: "Solo acepta letras"}
  validates :descripcion, length: {minimum: 7, maximum: 30, :message => "La descripcion debe tener entre 7 y 30 caracteres"}

end
