class Cliente < ApplicationRecord
  belongs_to :agenda, foreign_key: :agenda_id
  validates :rut, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :apellido, presence: {:message => "Llenado Obligatorio"}
  validates :sexo, presence: {:message => "Llenado Obligatorio"}
  validates :telefono, presence: {:message => "Llenado Obligatorio"}
  validates :comuna, presence: {:message => "Llenado Obligatorio"}
  validates :direccion, presence: {:message => "Llenado Obligatorio"}
  validates :edad, presence: {:message => "Llenado Obligatorio"}

end
