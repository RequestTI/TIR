require 'spec_helper'

describe "tiposervicos/edit" do
  before(:each) do
    @tiposervico = assign(:tiposervico, stub_model(Tiposervico,
      :titulo => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit tiposervico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tiposervico_path(@tiposervico), "post" do
      assert_select "input#tiposervico_titulo[name=?]", "tiposervico[titulo]"
      assert_select "input#tiposervico_descricao[name=?]", "tiposervico[descricao]"
    end
  end
end
