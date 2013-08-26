require 'spec_helper'

describe "tipo_servicos/new" do
  before(:each) do
    assign(:tipo_servico, stub_model(TipoServico,
      :tipo => "MyString",
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tipo_servicos_path, "post" do
      assert_select "input#tipo_servico_tipo[name=?]", "tipo_servico[tipo]"
      assert_select "input#tipo_servico_descricao[name=?]", "tipo_servico[descricao]"
    end
  end
end
