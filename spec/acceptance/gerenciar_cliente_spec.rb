# coding: utf-8
require 'spec_helper'

feature 'gerenciar cliente' do

  scenario 'incluir cliente' do #, :javascript => true do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')
    
    visit new_cliente_path

    preencher_e_verificar_cliente

    

  end

  scenario 'alterar cliente' do #, :javascript => true do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')

    cliente = FactoryGirl.create(:cliente, :empresa => empresa)

    visit edit_cliente_path(cliente)

    preencher_e_verificar_cliente


  end

  scenario 'excluir cliente' do #, :javascript => true do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')

    cliente = FactoryGirl.create(:cliente, :empresa => empresa)

    visit clientes_path

    click_link 'Excluir'
    
  end


  def preencher_e_verificar_cliente

    
    fill_in 'Matricula', :with => '123456'
    fill_in 'Nome', :with => 'Pedro'
    fill_in 'Sobrenome', :with => 'Alves'
    fill_in 'Lotacao', :with => 'GER-TIC'
    fill_in 'Localidade', :with => 'Centro Tecnologico'
    
    select 'XXX', :from => 'empresa'
        
    click_button 'Salvar'
    
    page.should have_content 'Matricula: 123456'
    page.should have_content 'Nome: Pedro'
    page.should have_content 'Sobrenome: Alves'
    page.should have_content 'Lotacao: GER-TIC'
    page.should have_content 'Localidade: Centro Tecnologico'

    
  end

end
