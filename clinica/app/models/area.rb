class Area < ApplicationRecord
  validates :especialidad, presence: {:message => "Llenado Obligatorio"}
end
