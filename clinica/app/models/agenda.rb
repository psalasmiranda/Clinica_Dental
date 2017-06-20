class Agenda < ApplicationRecord
  has_many :pacientes
  belongs_to :area, foreign_key: :area_id
  validates :hora, presence: {message => "LLenado Obligatorio"}
  validates :costo, presence: {message => "LLenado Obligatorio"}
end
