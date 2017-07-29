class CreateAgendas < ActiveRecord::Migration[5.1]
  def change
    create_table :agendas do |t|
      t.date :fecha
      t.text :comentario
      t.boolean :d55
      t.boolean :d54
      t.boolean :d53
      t.boolean :d52
      t.boolean :d51
      t.boolean :d61
      t.boolean :d62
      t.boolean :d63
      t.boolean :d64
      t.boolean :d65
      t.boolean :d85
      t.boolean :d84
      t.boolean :d83
      t.boolean :d82
      t.boolean :d81
      t.boolean :d71
      t.boolean :d72
      t.boolean :d73
      t.boolean :d74
      t.boolean :d75
      t.boolean :d18
      t.boolean :d17
      t.boolean :d16
      t.boolean :d15
      t.boolean :d14
      t.boolean :d13
      t.boolean :d12
      t.boolean :d11
      t.boolean :d21
      t.boolean :d22
      t.boolean :d23
      t.boolean :d24
      t.boolean :d25
      t.boolean :d26
      t.boolean :d27
      t.boolean :d28
      t.boolean :d38
      t.boolean :d37
      t.boolean :d36
      t.boolean :d35
      t.boolean :d34
      t.boolean :d33
      t.boolean :d32
      t.boolean :d31
      t.boolean :d41
      t.boolean :d42
      t.boolean :d43
      t.boolean :d44
      t.boolean :d45
      t.boolean :d46
      t.boolean :d47
      t.boolean :d48
      t.timestamps
    end
  end
end
