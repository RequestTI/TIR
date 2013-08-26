require 'spec_helper'

describe "tipo_servicos/show" do
  before(:each) do
    @tipo_servico = assign(:tipo_servico, stub_model(TipoServico,
      :tipo => "Tipo",
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
    rendered.should match(/Descricao/)
  end
end
