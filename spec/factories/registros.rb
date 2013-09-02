# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :registro do
    codregistro 1
    descricao "MyString"
    complemento "MyString"
    data "2013-09-01"
    hora "MyString"
    tiposervico nil
    cliente nil
  end
end
