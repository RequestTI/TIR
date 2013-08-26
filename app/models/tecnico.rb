class Tecnico < ActiveRecord::Base
  belongs_to :tiposervico
  attr_accessible :especializacao, :matricula, :nome, :ocupacao, :tiposervico_id
end
