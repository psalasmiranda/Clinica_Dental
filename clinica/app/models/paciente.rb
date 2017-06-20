class Paciente < ApplicationRecord
  has_many :historias
  belongs_to :comuna, foreign_key: :comuna_id
  belongs_to :agenda, foreign_key: :agenda_id
  validates :rut, presence: {message => "Llenado Obligatorio"}
  validates :nombre, presence: {message => "LLenado Obligatorio"}
  validates :materna, presence: {message => "LLenado Obligatorio"}
  validates :paterno, presence: {message => "LLenado Obligatorio"}
  validates :sexo, presence: {message => "LLenado Obligatorio"}
  validates :telefono, presence: {message => "LLenado Obligatorio"}
  validates :direccion, presence: {message => "LLenado Obligatorio"}
  validates :edad, presence: {message => "LLenado Obligatorio"}

end
