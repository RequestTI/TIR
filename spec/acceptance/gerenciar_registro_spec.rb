# coding: utf-8
require 'spec_helper'

feature 'gerenciar registro' do

  scenario 'incluir registro' do #, :javascript => true do

    tiposervico= FactoryGirl.create(:tiposervico, :titulo => 'X')
    cliente= FactoryGirl.create(:cliente, :nome => 'XXXX')

    visit new_registro_path

    preencher_e_verificar_registro

  end

  scenario 'alterar registro' do #, :javascript => true do

    tiposervico= FactoryGirl.create(:tiposervico, :titulo => 'X')
    cliente= FactoryGirl.create(:cliente, :nome => 'XXXX')

    registro = FactoryGirl.create(:registro, :tiposervico => tiposervico)
    registro = FactoryGirl.create(:registro, :cliente => cliente)

    visit edit_registro_path(registro)

    preencher_e_verificar_registro


  end

  scenario 'excluir registro' do #, :javascript => true do

    tiposervico= FactoryGirl.create(:tiposervico, :titulo => 'X')
    cliente= FactoryGirl.create(:cliente, :nome => 'XXXX')

    registro = FactoryGirl.create(:registro, :tiposervico => tiposervico, :cliente => cliente)

    visit registros_path

    click_link 'Excluir'
    
  end


  def preencher_e_verificar_registro

 
    fill_in 'Descricao', :with => 'Problemas na impressora.'
    fill_in 'Complemento', :with => 'Impressora Lexmark x790'
    fill_in 'Data', :with => '2012-12-12'
    fill_in 'Hora', :with => '12:00'
    
    select 'X', :from => 'Tiposervico'
    select 'XXXX', :from => 'Cliente'
        
    click_button 'Salvar'
    
    
    page.should have_content 'Descricao: Problemas na impressora'
    page.should have_content 'Complemento: Impressora Lexmark x790'
    page.should have_content 'Data: 2012-12-12'
    page.should have_content 'Hora: 12:00'
    page.should have_content 'Tiposervico: X'
    page.should have_content 'Cliente: XXXX'

    
  end

end
