class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.integer :codigoempresa
      t.string :razaosocial
      t.string :nome
      t.string :localidade

      t.timestamps
    end
  end
end
