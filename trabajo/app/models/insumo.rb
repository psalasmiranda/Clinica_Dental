class Insumo < ApplicationRecord

    belongs_to :componente, foreign_key: :componente_id
    belongs_to :listado, foreign_key: :listado_id
    validates :cantidad, presence: {:message => "Llenado Obligatorio"}
    validates :nombre, presence: {:message => "Llenado Obligatorio"}
    validates :ingreso, presence: {:message => "Llenado Obligatorio"}
    validates :vencimiento, presence: {:message => "Llenado Obligatorio"}

end
