require 'spec_helper'

describe "tiposervicos/index" do
  before(:each) do
    assign(:tiposervicos, [
      stub_model(Tiposervico,
        :titulo => "Titulo",
        :descricao => "Descricao"
      ),
      stub_model(Tiposervico,
        :titulo => "Titulo",
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tiposervicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
