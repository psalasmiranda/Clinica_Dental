class Material < ApplicationRecord
  belongs_to :tratamiento, foreign_key: :tratamiento_id
  belongs_to :insumo, foreign_key: :insumo_id
end
