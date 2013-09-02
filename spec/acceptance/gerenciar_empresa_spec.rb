# coding: utf-8

require 'spec_helper'

feature 'gerenciar empresa' do

  scenario 'incluir empresa' do # , :js => true do

    visit new_empresa_path

    preencher_e_verificar_empresa

    

  end

  scenario 'alterar empresa' do #, :js => true do

    empresa = FactoryGirl.create(:empresa)

    visit edit_empresa_path(empresa)

    preencher_e_verificar_empresa



  end

   scenario 'excluir empresa' do #, :javascript => true do

       empresa = FactoryGirl.create(:empresa)

        visit empresas_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_empresa

      
      
      fill_in 'Razaosocial', :with => "Petroleo"
      fill_in 'Nome', :with => "Petrobras"
      fill_in 'Localidade', :with => "Parque de Tubos"

        
 
      click_button 'Salvar'

     
      page.should have_content 'Razaosocial: Petroleo'
      page.should have_content 'Nome: Petrobras'
      page.should have_content 'Localidade: Parque de Tubos'

      

   end
end
