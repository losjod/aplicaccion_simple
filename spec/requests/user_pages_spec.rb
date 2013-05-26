require 'spec_helper'

describe "User Pages" do

  subject { page }


  describe "Inicio Sesion" do

    before { visit iniciosesion_path}


    it { should have_selector('h1',    text: 'Inicio Sesion') }
    it { should have_selector('title', text: full_title('Inicio Sesion')) }
  end
end

