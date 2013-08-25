# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :atendimento do
    sumario "MyString"
    resolucao "MyString"
    dataAtualizacao "2013-08-25"
    horaAtualizacao "MyString"
    horaFinalizacao "MyString"
    status "MyString"
    tecnico nil
    registro nil
  end
end
