class Gastado < ApplicationRecord
  belongs_to :agenda, foreign_key: :agenda_id
  belongs_to :insumo, foreign_key: :insumo_id
end
