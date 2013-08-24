require 'spec_helper'

describe "empresas/show" do
  before(:each) do
    @empresa = assign(:empresa, stub_model(Empresa,
      :codigoempresa => 1,
      :razaosocial => "Razaosocial",
      :nome => "Nome",
      :localidade => "Localidade"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Razaosocial/)
    rendered.should match(/Nome/)
    rendered.should match(/Localidade/)
  end
end
