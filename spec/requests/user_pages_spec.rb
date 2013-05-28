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

        describe "after submission" do
          before { click_button submit }

          it { should have_title('title', text: 'Sign up') }
          it { should have_content('error') }
          it { should have_link('Sign out') }
        end

      end




    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Ric Valdez"
        fill_in "Email",        with: "rickvaldez3@hotmail.com"
        fill_in "Password",     with: "tecweb"
        fill_in "Confirmation", with: "tecweb"

        describe "after saving the user" do
          before { click_button submit }
          let(:user) { User.find_by(email: 'user@example.com') }

          it { should have_title(user.name) }
          it { should have_selector('div.alert.alert-success', text: 'Bienvenidp') }

          it { should have_link('Sign out') }

        end

        it "should create a user" do
          expect { click_button submit }.to change(User, :count).by(1)
        end

      end





    end
  end

end

