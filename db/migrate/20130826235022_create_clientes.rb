class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :matricula
      t.string :nome
      t.string :sobrenome
      t.string :lotacao
      t.string :localidade
      t.references :empresa

      t.timestamps
    end
    add_index :clientes, :empresa_id
  end
end
