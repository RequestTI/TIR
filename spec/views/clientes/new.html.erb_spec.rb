require 'spec_helper'

describe "clientes/new" do
  before(:each) do
    assign(:cliente, stub_model(Cliente,
      :matricula => "MyString",
      :nome => "MyString",
      :sobrenome => "MyString",
      :lotacao => "MyString",
      :localidade => "MyString",
      :empresa => nil
    ).as_new_record)
  end

  it "renders new cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clientes_path, "post" do
      assert_select "input#cliente_matricula[name=?]", "cliente[matricula]"
      assert_select "input#cliente_nome[name=?]", "cliente[nome]"
      assert_select "input#cliente_sobrenome[name=?]", "cliente[sobrenome]"
      assert_select "input#cliente_lotacao[name=?]", "cliente[lotacao]"
      assert_select "input#cliente_localidade[name=?]", "cliente[localidade]"
      assert_select "input#cliente_empresa[name=?]", "cliente[empresa]"
    end
  end
end
