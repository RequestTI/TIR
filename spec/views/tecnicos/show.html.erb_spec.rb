require 'spec_helper'

describe "tecnicos/show" do
  before(:each) do
    @tecnico = assign(:tecnico, stub_model(Tecnico,
      :matricula => "Matricula",
      :nome => "Nome",
      :ocupacao => "Ocupacao",
      :especializacao => "Especializacao",
      :tiposervico => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Matricula/)
    rendered.should match(/Nome/)
    rendered.should match(/Ocupacao/)
    rendered.should match(/Especializacao/)
    rendered.should match(//)
  end
end
