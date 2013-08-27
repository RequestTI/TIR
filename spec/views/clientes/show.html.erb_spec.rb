require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :matricula => "Matricula",
      :nome => "Nome",
      :sobrenome => "Sobrenome",
      :lotacao => "Lotacao",
      :localidade => "Localidade",
      :empresa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Matricula/)
    rendered.should match(/Nome/)
    rendered.should match(/Sobrenome/)
    rendered.should match(/Lotacao/)
    rendered.should match(/Localidade/)
    rendered.should match(//)
  end
end
