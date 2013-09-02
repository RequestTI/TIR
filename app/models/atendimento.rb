class Atendimento < ActiveRecord::Base
  belongs_to :tecnico
  belongs_to :registro
  attr_accessible :dataAtualizacao, :horaAtualizacao, :horaFinalizacao, :resolucao, :status, :sumario, :tecnico_id, :registro_id
end
