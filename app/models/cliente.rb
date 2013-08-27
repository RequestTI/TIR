class Cliente < ActiveRecord::Base
  belongs_to :empresa
  attr_accessible :localidade, :lotacao, :matricula, :nome, :sobrenome, :empresa_id
end
