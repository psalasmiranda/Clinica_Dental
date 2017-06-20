class Listado < ApplicationRecord
belongs_to :usuario, foreign_key: :usuario_id
belongs_to :area, foreign_key: :area_id
end
