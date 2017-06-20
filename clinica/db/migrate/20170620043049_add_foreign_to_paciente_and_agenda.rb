class AddForeignToPacienteAndAgenda < ActiveRecord::Migration[5.1]
  def change
    add_column :agendas, :area_id, :integer
    add_foreign_key :agendas, :areas, column: :area_id, primary_key: :id

    add_column :agendas, :paciente_id, :integer
    add_foreign_key :agendas, :pacientes, column: :paciente_id, primary_key: :id

    add_column :pacientes, :comuna_id, :integer
    add_foreign_key :pacientes, :comunas, column: :comuna_id, primary_key: :id

    add_column :historias, :paciente_id, :integer
    add_foreign_key :historias, :pacientes, column: :paciente_id, primary_key: :id

    add_column :historias, :tratamiento_id, :integer
    add_foreign_key :historias, :tratamientos, column: :tratamiento_id, primary_key: :id

    add_column :listados, :area_id, :integer
    add_foreign_key :listados, :areas, column: :area_id, primary_key: :id

    add_column :listados, :usuario_id, :integer
    add_foreign_key :listados, :usuarios, column: :usuario_id, primary_key: :id

    add_column :usuarios, :grado_id, :integer
    add_foreign_key :usuarios, :grados, column: :grado_id, primary_key: :id

    add_column :articulos, :agente_id, :integer
    add_foreign_key :articulos, :agentes, column: :agente_id, primary_key: :id

    add_column :articulos, :insumo_id, :integer
    add_foreign_key :articulos, :insumos, column: :insumo_id, primary_key: :id

  end
end
