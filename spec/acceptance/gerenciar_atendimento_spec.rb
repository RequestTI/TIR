# coding: utf-8
require 'spec_helper'

feature 'gerenciar atendimento' do

  scenario 'incluir atendimento' do #, :javascript => true do

    tecnico = FactoryGirl.create(:tecnico, :nome => 'XXX')
    
    registro = FactoryGirl.create(:registro, :descricao => 'Teste descricao')

    visit new_atendimento_path

    preencher_e_verificar_atendimento

    

  end

  scenario 'alterar atendimento' do #, :javascript => true do

    tecnico = FactoryGirl.create(:tecnico, :nome => 'XXX')
    
    registro = FactoryGirl.create(:registro, :descricao => 'Teste descricao')

    atendimento = FactoryGirl.create(:atendimento, :tecnico => tecnico, :registro => registro)

    visit edit_atendimento_path(atendimento)

    preencher_e_verificar_atendimento


  end

  scenario 'excluir atendimento' do #, :javascript => true do

	tecnico = FactoryGirl.create(:tecnico, :nome => 'XXX')
    
    registro = FactoryGirl.create(:registro, :descricao => 'Teste descricao')

    atendimento = FactoryGirl.create(:atendimento, :tecnico => tecnico, :registro => registro)

    visit atendimentos_path

    click_link 'Excluir'    
    
  end


  def preencher_e_verificar_atendimento

    
    fill_in 'Sumario', :with => 'Atendimento iniciado'
    fill_in 'Resolução', :with => 'Acesso concedido com sucesso'
    fill_in 'Data Atualização', :with => '2013-10-10'
    fill_in 'Hora Atualização', :with => '09:00'
    fill_in 'Hora Finalização', :with => '09:40'
    fill_in 'Status', :with => 'Resolvido'

    
    select 'XXX', :from => 'Tecnico'
    select 'Teste descricao', :from => 'Registro'
    
    click_button 'Salvar'
    
    page.should have_content 'Sumario: Atendimento iniciado'
    page.should have_content 'Resolução: Acesso concedido com sucesso'
    page.should have_content 'Data Atualização: 2013-10-10'
    page.should have_content 'Hora Atualização: 09:00'
    page.should have_content 'Hora Finalização: 09:40'
    page.should have_content 'Status: Resolvido'
    
  end     

end

#rails g scaffold atendimento nome rua complemento sexo proprietario:references (chave estrangeira)
#rake db:migrate db:test:prepare


