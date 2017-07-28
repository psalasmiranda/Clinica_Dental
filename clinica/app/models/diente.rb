class Diente < ApplicationRecord
  belongs_to :agenda, foreign_key: :agenda_id
end
