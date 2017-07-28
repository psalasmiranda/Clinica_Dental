class CreateCalendarios < ActiveRecord::Migration[5.1]
  def change
    create_table :calendarios do |t|
      t.time :hora_el
      t.time :hora_sl
      t.time :hora_ema
      t.time :hora_sma
      t.time :hora_em
      t.time :hora_sm
      t.time :hora_ej
      t.time :hora_sj
      t.time :hora_ev
      t.time :hora_sv
      t.time :hora_es
      t.time :hora_ss
      t.timestamps
    end
  end
end
