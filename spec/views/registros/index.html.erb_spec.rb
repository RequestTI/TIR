require 'spec_helper'

describe "registros/index" do
  before(:each) do
    assign(:registros, [
      stub_model(Registro,
        :codregistro => 1,
        :descricao => "Descricao",
        :complemento => "Complemento",
        :hora => "Hora",
        :tiposervico => nil,
        :cliente => nil
      ),
      stub_model(Registro,
        :codregistro => 1,
        :descricao => "Descricao",
        :complemento => "Complemento",
        :hora => "Hora",
        :tiposervico => nil,
        :cliente => nil
      )
    ])
  end

  it "renders a list of registros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
