class Grado < ApplicationRecord
validates :grado, presence: {:message => "Llenado Obligatorio"}
end
