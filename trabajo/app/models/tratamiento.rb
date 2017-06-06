class Tratamiento < ApplicationRecord
  belongs_to :agenda, foreign_key: :agenda_id
  belongs_to :componente, foreign_key: :componente_id
  validates :cantidad, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :fecha, presence: {:message => "Llenado Obligatorio"}

end
