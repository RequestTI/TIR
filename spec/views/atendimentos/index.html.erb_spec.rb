require 'spec_helper'

describe "atendimentos/index" do
  before(:each) do
    assign(:atendimentos, [
      stub_model(Atendimento,
        :sumario => "Sumario",
        :resolucao => "Resolucao",
        :horaAtualizacao => "Hora Atualizacao",
        :horaFinalizacao => "Hora Finalizacao",
        :status => "Status",
        :tecnico => nil,
        :registro => nil
      ),
      stub_model(Atendimento,
        :sumario => "Sumario",
        :resolucao => "Resolucao",
        :horaAtualizacao => "Hora Atualizacao",
        :horaFinalizacao => "Hora Finalizacao",
        :status => "Status",
        :tecnico => nil,
        :registro => nil
      )
    ])
  end

  it "renders a list of atendimentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sumario".to_s, :count => 2
    assert_select "tr>td", :text => "Resolucao".to_s, :count => 2
    assert_select "tr>td", :text => "Hora Atualizacao".to_s, :count => 2
    assert_select "tr>td", :text => "Hora Finalizacao".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
