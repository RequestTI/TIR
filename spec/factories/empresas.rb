# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :empresa do
    codigoempresa 1
    razaosocial "MyString"
    nome "MyString"
    localidade "MyString"
  end
end
