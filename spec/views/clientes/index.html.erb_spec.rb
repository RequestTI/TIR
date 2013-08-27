require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :matricula => "Matricula",
        :nome => "Nome",
        :sobrenome => "Sobrenome",
        :lotacao => "Lotacao",
        :localidade => "Localidade",
        :empresa => nil
      ),
      stub_model(Cliente,
        :matricula => "Matricula",
        :nome => "Nome",
        :sobrenome => "Sobrenome",
        :lotacao => "Lotacao",
        :localidade => "Localidade",
        :empresa => nil
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Matricula".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Sobrenome".to_s, :count => 2
    assert_select "tr>td", :text => "Lotacao".to_s, :count => 2
    assert_select "tr>td", :text => "Localidade".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
