class Agenda < ApplicationRecord
  belongs_to :hora, foreign_key: :hora_id
  belongs_to :tratamiento, foreign_key: :tratamiento_id
  belongs_to :paciente, foreign_key: :paciente_id
  belongs_to :usuario, foreign_key: :usuario_id

  validates :hora, presence: {:message => "LLenado Obligatorio"}
  
end
