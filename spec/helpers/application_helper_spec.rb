#require 'spec_helper'

#describe ApplicationHelper do

 # describe "full_title" do
  #  it "should include the page title" do
   #   full_title("Aplicacion Simple").should =~ /Aplicacion Simple/
    #end

#    it "should include the base title" do
 #     full_title("Inicio").should =~ /^Ruby Tutorial en Aplicacion Simple/
  #  end

#    it "should not include a bar for the home page" do
 #     full_title("Tecnologias Web").should_not =~ /\|/
  #  end
  #end
#end


module ApplicationHelper

  def full_title(page_title)
    base_title = "Tecnologias Web |"
    if page_title.empty?
      base_title

    else
      "#{base_title} | #{page_title}"
    end
  end



end
