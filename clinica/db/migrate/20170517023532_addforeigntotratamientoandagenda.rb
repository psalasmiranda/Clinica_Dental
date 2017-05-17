class Addforeigntotratamientoandagenda < ActiveRecord::Migration[5.1]
  def change
    add_colum :tratamientos, :agen_id :integer
    add_foreign_key :tratamientos, :agendas, colum: agen_id, primary_key: :id
  end
end
