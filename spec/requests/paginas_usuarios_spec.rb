require 'spec_helper'

describe "PaginasUsuarios" do

  subject { page }

  describe "inicio sesion" do

    before { visit iniciosesion_patch}
    it { should have_selector('h1',    text: 'Inicio Sesion') }
    it { should have_selector('title', text: full_title('Inicio Sesion')) }
    end
  end

