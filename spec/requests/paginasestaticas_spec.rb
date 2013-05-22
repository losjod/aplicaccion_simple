require 'spec_helper'

describe "paginasestaticas" do



  describe "Pagina Principal" do
    it "Debe tener el contenido 'paginasestaticas'" do
      visit '/paginasestaticas/inicio'
      page.should have_content('Aplicacion Simple')
    end

    it "Deberia tener h1 'Aplicacion Simple'" do
      visit '/paginasestaticas/inicio'
      page.should have_selector('h1', :text => 'Aplicacion Simple')
    end

    #it "Deberia tener titulo 'Inicio'" do
     # visit '/paginasestaticas/inicio'
      #page.should have_selector('title',
       #                        :text => "Tecnologias Web  | Inicio")
    #end
  end

  describe "Pagina de Ayuda" do

    it "Dede tener el contenido 'Ayuda'" do
      visit '/paginasestaticas/ayuda'
      page.should have_content('Ayuda')
    end

    it "Deberia tener h1 'Ayuda'" do
      visit '/paginasestaticas/ayuda'
      page.should have_selector('h1', :text => 'Ayuda')
    end

    #it "Deberia tener titulo 'Ayuda'" do
      #visit '/paginasestaticas/ayuda'
     # page.should have_selector('title',
    #                            :text => "Tecnologias Web  | Ayuda")
    #end
  end

  describe "Sobre la Pagina" do

    it "Debe tener el contenido 'Sobre Nosotros'" do
      visit '/paginasestaticas/sobre'
      page.should have_content('Sobre Nosotros')
    end


    it "Deberia tener h1 'Sobre Nosotros'" do
      visit '/paginasestaticas/sobre'
      page.should have_selector('h1', :text => 'Sobre Nosotros')
    end

    #it "Deberia tener titulo 'Sobre Nosotros'" do
      #visit '/paginasestaticas/sobre'
      #page.should have_selector('title',
     #                           :text => "Tecnologias Web | Sobre Nosotros")
    #end
  end
end