require 'spec_helper'

describe "registros/edit" do
  before(:each) do
    @registro = assign(:registro, stub_model(Registro,
      :codregistro => 1,
      :descricao => "MyString",
      :complemento => "MyString",
      :hora => "MyString",
      :tiposervico => nil,
      :cliente => nil
    ))
  end

  it "renders the edit registro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", registro_path(@registro), "post" do
      assert_select "input#registro_codregistro[name=?]", "registro[codregistro]"
      assert_select "input#registro_descricao[name=?]", "registro[descricao]"
      assert_select "input#registro_complemento[name=?]", "registro[complemento]"
      assert_select "input#registro_hora[name=?]", "registro[hora]"
      assert_select "input#registro_tiposervico[name=?]", "registro[tiposervico]"
      assert_select "input#registro_cliente[name=?]", "registro[cliente]"
    end
  end
end
