require 'spec_helper'

describe "tipo_servicos/edit" do
  before(:each) do
    @tipo_servico = assign(:tipo_servico, stub_model(TipoServico,
      :tipo => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipo_servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tipo_servico_path(@tipo_servico), "post" do
      assert_select "input#tipo_servico_tipo[name=?]", "tipo_servico[tipo]"
      assert_select "input#tipo_servico_descricao[name=?]", "tipo_servico[descricao]"
    end
  end
end
