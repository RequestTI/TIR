# coding: utf-8
require 'spec_helper'

feature 'gerenciar tecnico' do

  scenario 'incluir tecnico' do #, :javascript => true  do

    tiposervico = FactoryGirl.create(:tiposervico, :titulo => 'XXX')

    visit new_tecnico_path

    preencher_e_verificar_tecnico

    

  end

  scenario 'alterar tecnico' do #, :javascript => true  do

    tiposervico = FactoryGirl.create(:tiposervico, :titulo => 'XXX')

    tecnico = FactoryGirl.create(:tecnico,:tiposervico => tiposervico) 

    visit edit_tecnico_path(tecnico)

    preencher_e_verificar_tecnico


  end

  scenario 'excluir tecnico' do #, :javascript => true  do

    tiposervico = FactoryGirl.create(:tiposervico, :titulo => 'XXX')

    tecnico = FactoryGirl.create(:tecnico,:tiposervico => tiposervico)

    visit tecnicos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_tecnico

    
    fill_in 'Matricula', :with => '00567'
    fill_in 'Nome', :with => 'Jose'
    fill_in 'Ocupacao', :with => 'Analista de suporte' 
    fill_in 'Especializacao', :with => 'Notes'
        
    select 'XXX', :from => 'tiposervico' 
    
    click_button 'Salvar'
    
    page.should have_content 'Matricula: 00567'
    page.should have_content 'Nome: Jose'
    page.should have_content 'Ocupacao: Analista de suporte'
    page.should have_content 'Especializacao: Notes'
    page.should have_content 'Tiposervico: XXX'
    
  end

      

end
