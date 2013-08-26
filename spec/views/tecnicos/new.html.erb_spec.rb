require 'spec_helper'

describe "tecnicos/new" do
  before(:each) do
    assign(:tecnico, stub_model(Tecnico,
      :matricula => "MyString",
      :nome => "MyString",
      :ocupacao => "MyString",
      :especializacao => "MyString",
      :tiposervico => nil
    ).as_new_record)
  end

  it "renders new tecnico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tecnicos_path, "post" do
      assert_select "input#tecnico_matricula[name=?]", "tecnico[matricula]"
      assert_select "input#tecnico_nome[name=?]", "tecnico[nome]"
      assert_select "input#tecnico_ocupacao[name=?]", "tecnico[ocupacao]"
      assert_select "input#tecnico_especializacao[name=?]", "tecnico[especializacao]"
      assert_select "input#tecnico_tiposervico[name=?]", "tecnico[tiposervico]"
    end
  end
end
