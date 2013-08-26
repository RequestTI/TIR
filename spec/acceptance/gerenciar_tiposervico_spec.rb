# coding: utf-8

require 'spec_helper'

feature 'gerenciar tiposervico' do

  scenario 'incluir tiposervico' do # , :js => true do

    visit new_tiposervico_path

    preencher_e_verificar_tiposervico

    #github

  end

  scenario 'alterar tiposervico' do #, :js => true do

    tiposervico = FactoryGirl.create(:tiposervico)

    visit edit_tiposervico_path(tiposervico)

    preencher_e_verificar_tiposervico



  end

   scenario 'excluir tiposervico' do #, :javascript => true do

       tiposervico = FactoryGirl.create(:tiposervico)

        visit tiposervicos_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_tiposervico

      
      fill_in 'Titulo', :with => "Incidente"
      fill_in 'Descricao', :with => "Reparar"
        
 
      click_button 'Salvar'

      page.should have_content 'Titulo: Incidente'
      page.should have_content 'Descricao: Reparar'
      
      

   end
end
