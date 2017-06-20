class Agenda < ApplicationRecord
  belongs_to :area, foreign_key: :area_id
  belongs_to :paciente, foreign_key: :paciente_id
  validates :hora, presence: {:message => "LLenado Obligatorio"}
  validates :costo, presence: {:message => "LLenado Obligatorio"}
end
