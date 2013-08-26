# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tecnico do
    matricula "MyString"
    nome "MyString"
    ocupacao "MyString"
    especializacao "MyString"
    tiposervico nil
  end
end
