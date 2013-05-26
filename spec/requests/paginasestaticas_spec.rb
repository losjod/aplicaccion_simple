require 'spec_helper'

describe "paginasestaticas" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Pagina Principal" do


    before { visit root_path }

    let(:heading)    { 'Aplicacion Simple' }
    let(:page_title) { '' }
    #it_should_behave_like "all static pages"
    #text: "Tecnologias Web" }
    it { should_not have_selector 'title', text: 'Inicio' }
   # it "Debe tener el contenido 'paginasestaticas'" do
      #visit '/paginasestaticas/inicio'
    #  visit  root_path
     # page.should have_content('Aplicacion Simple')
   # end

    #it "Deberia tener h1 'Aplicacion Simple'" do
      #visit '/paginasestaticas/inicio'
     # visit  root_path
      #page.should have_selector('h1', :text => 'Aplicacion Simple')
    #end

    #it "Debe tener titulo 'Inicio'" do
      #visit '/paginasestaticas/inicio'
     # visit  root_path
      #page.should have_selector('title',
       #                        :text => "Tecnologias Web ")
   #end

    #it "No debe tener titulo especifico Inicio" do
     # visit '/paginasestaticas/inicio'
      #page.should_not have_selector('title',
       #                             :text => ' Inicio')
    #end


  end

  describe "Pagina de Ayuda" do
    before { visit ayuda_path }


    let(:heading)    { 'Ayuda' }
    let(:page_title) { '' }
    #it { should have_selector('h1', text: 'Ayuda') }
    #it { should have_selector 'title', text: full_title('Ayuda') }
    #text: "Tecnologias Web" }
    #it { should_not have_selector 'title', text: ' Ayuda' }

    #it "Dede tener el contenido 'Ayuda'" do
      #visit '/paginasestaticas/ayuda'
     # visit  ayuda_path
      #page.should have_content('Ayuda')
    #end

    #it "Deberia tener h1 'Ayuda'" do
      #visit '/paginasestaticas/ayuda'
     # visit  ayuda_path
      #page.should have_selector('h1', :text => 'Ayuda')
    #end

    #it "Deberia tener titulo 'Ayuda'" do
      #visit '/paginasestaticas/ayuda'
     # page.should have_selector('title',
    #                            :text => "Tecnologias Web  | Ayuda")
    #end
  end

  describe "Sobre la Pagina" do
    before { visit sobre_path }

    let(:heading)    { 'Sobre Nosotros' }
    let(:page_title) { '' }
    #it { should have_selector('h1', text: 'Sobre Nosotros') }
    #it { should have_selector 'title', text: full_title('Sobre Nosotros') }
    #text: "Tecnologias Web" }
    #it { should_not have_selector 'title', text: ' SobreNosotros' }


    #it "Debe tener el contenido 'Sobre Nosotros'" do
      #visit '/paginasestaticas/sobre'
     # visit  sobre_path
      #page.should have_content('Sobre Nosotros')
    #end


    #it "Deberia tener h1 'Sobre Nosotros'" do
      #visit '/paginasestaticas/sobre'
     # visit  sobre_path
      #page.should have_selector('h1', :text => 'Sobre Nosotros')
    #end

    #it "Deberia tener titulo 'Sobre Nosotros'" do
      #visit '/paginasestaticas/sobre'
      #page.should have_selector('title',
     #                           :text => "Tecnologias Web | Sobre Nosotros")
    #end
  end


  describe "Contacto " do
    before { visit contacto_path }

    let(:heading)    { 'Contacto' }
    let(:page_title) { '' }

    #it { should have_selector('h1', text: 'Contacto') }
    #it { should have_selector 'title', text: full_title('Contacto') }
    #text: "Tecnologias Web" }
    #it { should_not have_selector 'title', text: ' Contacto' }
  # it "Debe tener contacto 'Contacto'" do
     #visit '/paginasestaticas/contacto'
   #  visit  contacto_path
    # page.should have_selector('h1', :text => 'Contacto')

   #end

   #it "Debe tener el contenido 'Contacto'" do
     #visit '/paginasestaticas/contacto'
    # visit  contacto_path
     #page.should have_content('Contacto')
   #end

   #it "Debe tener el titulo 'Contacto'" do
    # visit '/static_pages/contacto'
     #page.should have_selector('title',
      #                         text: "Tecnologias Web |")
   #end
    end



 # it "should have the right links on the layout" do
  #  visit root_path
   # click_link "Sobre"
    #page.should have_selector 'title', text: full_title('Sobre Nosotros')
#    click_link "Ayuda"
 #   page.should # fill in
  #  click_link "Contacto"
   # page.should # fill in
    #click_link "Inicio"
#    click_link "Registrate Ahora!"
 #   page.should # fill in
  #  click_link "Aplicacion Simple"
   # page.should # fill in
  #end



end