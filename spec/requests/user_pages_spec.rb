require 'spec_helper'

describe "User Pages" do

  subject { page }


  describe "profile page" do
    # Replace with code to make a user variable
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should has_title(user.name) }
  end



  describe "Inicio Sesion" do

    before { visit signup_path }

    let(:submit) { "Crear mi Cuenta" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Ric Valdez"
        fill_in "Email",        with: "rickvaldez3@hotmail.com"
        fill_in "Password",     with: "tecweb"
        fill_in "Confirmation", with: "tecweb"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end

end

