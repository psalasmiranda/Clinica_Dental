class Agenda < ApplicationRecord
  belongs_to :hora, foreign_key: :hora_id
  belongs_to :tratamiento, foreign_key: :tratamiento_id
  belongs_to :paciente, foreign_key: :paciente_id
<<<<<<< HEAD
  belongs_to :usuario, foreign_key: :usuario_id
=======
  validates :hora, presence: {:message => "LLenado Obligatorio"}


  validates :costo, presence: {:message => "LLenado Obligatorio"}
  validates :costo, numericality: {only_integer: true, message:"Solo numero enteros"}
  validates :costo, numericality: {:greater_than_or_equal_to =>0, message: "No se aceptan enteros negativos"},length: {minimun:1, maximum:6, message: "El precio debe ser de 1 a 6 digitos"}


>>>>>>> 0561758c8f8d5acbd585282ed14927c815f5b28b

  validates :hora, presence: {:message => "LLenado Obligatorio"}
  
end
