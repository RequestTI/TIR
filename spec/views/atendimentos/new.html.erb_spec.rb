require 'spec_helper'

describe "atendimentos/new" do
  before(:each) do
    assign(:atendimento, stub_model(Atendimento,
      :sumario => "MyString",
      :resolucao => "MyString",
      :horaAtualizacao => "MyString",
      :horaFinalizacao => "MyString",
      :status => "MyString",
      :tecnico => nil,
      :registro => nil
    ).as_new_record)
  end

  it "renders new atendimento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", atendimentos_path, "post" do
      assert_select "input#atendimento_sumario[name=?]", "atendimento[sumario]"
      assert_select "input#atendimento_resolucao[name=?]", "atendimento[resolucao]"
      assert_select "input#atendimento_horaAtualizacao[name=?]", "atendimento[horaAtualizacao]"
      assert_select "input#atendimento_horaFinalizacao[name=?]", "atendimento[horaFinalizacao]"
      assert_select "input#atendimento_status[name=?]", "atendimento[status]"
      assert_select "input#atendimento_tecnico[name=?]", "atendimento[tecnico]"
      assert_select "input#atendimento_registro[name=?]", "atendimento[registro]"
    end
  end
end
