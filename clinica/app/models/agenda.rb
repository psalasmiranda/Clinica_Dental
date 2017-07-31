class Agenda < ApplicationRecord
  belongs_to :hora, foreign_key: :hora_id
  belongs_to :tratamiento, foreign_key: :tratamiento_id
  belongs_to :paciente, foreign_key: :paciente_id
  belongs_to :usuario, foreign_key: :usuario_id
  has_many :gastados


  validates :hora_id, presence: {:message => "LLenado Obligatorio"}
  validates :fecha, presence: {:message => "LLenado Obligatorio"}
  validates :paciente_id, presence: {:message => "LLenado Obligatorio"}
  validates :usuario_id, presence: {:message => "LLenado Obligatorio"}
  validates :tratamiento_id, presence: {:message => "LLenado Obligatorio"}

  validates :fecha, uniqueness: { scope: [:usuario_id, :hora_id],
    message: "El doctor ya reservo esa hora" }
  validates :paciente_id, uniqueness: { scope: [:fecha, :hora_id],
    message: "El paciente posee una reserva a esa hora" }

    def insumos=(value)
      @insumos = value
    end

    def save_insumos
      @insumos.each do |insumo_id|
        HasInsumo.create(insumo_id: insumo_id, agenda: self.id)
      end
    end
end
