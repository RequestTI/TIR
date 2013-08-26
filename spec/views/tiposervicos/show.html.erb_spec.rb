require 'spec_helper'

describe "tiposervicos/show" do
  before(:each) do
    @tiposervico = assign(:tiposervico, stub_model(Tiposervico,
      :titulo => "Titulo",
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    rendered.should match(/Descricao/)
  end
end
