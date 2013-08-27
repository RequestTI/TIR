require 'spec_helper'

describe "clientes/edit" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :matricula => "MyString",
      :nome => "MyString",
      :sobrenome => "MyString",
      :lotacao => "MyString",
      :localidade => "MyString",
      :empresa => nil
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do
      assert_select "input#cliente_matricula[name=?]", "cliente[matricula]"
      assert_select "input#cliente_nome[name=?]", "cliente[nome]"
      assert_select "input#cliente_sobrenome[name=?]", "cliente[sobrenome]"
      assert_select "input#cliente_lotacao[name=?]", "cliente[lotacao]"
      assert_select "input#cliente_localidade[name=?]", "cliente[localidade]"
      assert_select "input#cliente_empresa[name=?]", "cliente[empresa]"
    end
  end
end
