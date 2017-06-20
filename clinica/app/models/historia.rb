class Historia < ApplicationRecord
belongs_to :tratamiento, foreign_key: :tratamiento_id
belongs_to :paciente, foreign_key: :paciente_id 
end
