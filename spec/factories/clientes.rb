# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    matricula "MyString"
    nome "MyString"
    sobrenome "MyString"
    lotacao "MyString"
    localidade "MyString"
    empresa nil
  end
end
