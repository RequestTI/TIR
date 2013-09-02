require 'spec_helper'

describe "registros/show" do
  before(:each) do
    @registro = assign(:registro, stub_model(Registro,
      :codregistro => 1,
      :descricao => "Descricao",
      :complemento => "Complemento",
      :hora => "Hora",
      :tiposervico => nil,
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Descricao/)
    rendered.should match(/Complemento/)
    rendered.should match(/Hora/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
