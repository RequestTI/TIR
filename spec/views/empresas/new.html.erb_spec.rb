require 'spec_helper'

describe "empresas/new" do
  before(:each) do
    assign(:empresa, stub_model(Empresa,
      :codigoempresa => 1,
      :razaosocial => "MyString",
      :nome => "MyString",
      :localidade => "MyString"
    ).as_new_record)
  end

  it "renders new empresa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", empresas_path, "post" do
      assert_select "input#empresa_codigoempresa[name=?]", "empresa[codigoempresa]"
      assert_select "input#empresa_razaosocial[name=?]", "empresa[razaosocial]"
      assert_select "input#empresa_nome[name=?]", "empresa[nome]"
      assert_select "input#empresa_localidade[name=?]", "empresa[localidade]"
    end
  end
end
