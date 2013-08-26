require 'spec_helper'

describe "tipo_servicos/index" do
  before(:each) do
    assign(:tipo_servicos, [
      stub_model(TipoServico,
        :tipo => "Tipo",
        :descricao => "Descricao"
      ),
      stub_model(TipoServico,
        :tipo => "Tipo",
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tipo_servicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
