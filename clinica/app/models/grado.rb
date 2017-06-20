class Grado < ApplicationRecord
  belongs_to :usuario, foreign_key: :usuario_id
  validates :grado, presence: {:message => "Llenado Obligatorio"}
end
