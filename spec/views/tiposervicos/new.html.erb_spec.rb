require 'spec_helper'

describe "tiposervicos/new" do
  before(:each) do
    assign(:tiposervico, stub_model(Tiposervico,
      :titulo => "MyString",
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new tiposervico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tiposervicos_path, "post" do
      assert_select "input#tiposervico_titulo[name=?]", "tiposervico[titulo]"
      assert_select "input#tiposervico_descricao[name=?]", "tiposervico[descricao]"
    end
  end
end
