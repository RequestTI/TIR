require 'spec_helper'

describe "empresas/index" do
  before(:each) do
    assign(:empresas, [
      stub_model(Empresa,
        :codigoempresa => 1,
        :razaosocial => "Razaosocial",
        :nome => "Nome",
        :localidade => "Localidade"
      ),
      stub_model(Empresa,
        :codigoempresa => 1,
        :razaosocial => "Razaosocial",
        :nome => "Nome",
        :localidade => "Localidade"
      )
    ])
  end

  it "renders a list of empresas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Razaosocial".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Localidade".to_s, :count => 2
  end
end
