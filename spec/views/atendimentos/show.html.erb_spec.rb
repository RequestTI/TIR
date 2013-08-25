require 'spec_helper'

describe "atendimentos/show" do
  before(:each) do
    @atendimento = assign(:atendimento, stub_model(Atendimento,
      :sumario => "Sumario",
      :resolucao => "Resolucao",
      :horaAtualizacao => "Hora Atualizacao",
      :horaFinalizacao => "Hora Finalizacao",
      :status => "Status",
      :tecnico => nil,
      :registro => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sumario/)
    rendered.should match(/Resolucao/)
    rendered.should match(/Hora Atualizacao/)
    rendered.should match(/Hora Finalizacao/)
    rendered.should match(/Status/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
