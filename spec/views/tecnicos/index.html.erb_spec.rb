require 'spec_helper'

describe "tecnicos/index" do
  before(:each) do
    assign(:tecnicos, [
      stub_model(Tecnico,
        :matricula => "Matricula",
        :nome => "Nome",
        :ocupacao => "Ocupacao",
        :especializacao => "Especializacao",
        :tiposervico => nil
      ),
      stub_model(Tecnico,
        :matricula => "Matricula",
        :nome => "Nome",
        :ocupacao => "Ocupacao",
        :especializacao => "Especializacao",
        :tiposervico => nil
      )
    ])
  end

  it "renders a list of tecnicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Matricula".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Ocupacao".to_s, :count => 2
    assert_select "tr>td", :text => "Especializacao".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
