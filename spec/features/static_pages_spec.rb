require 'spec_helper'

describe "Static pages" do
	subject { page }
	
	
  describe "Home page" do
	before { visit root_path }
  
    it { should have_selector('h1',	text: 'Sample App') }
    it { has_title? full_title('') }
    it { page.has_no_title? "| Home" }
  end
  
  
  describe "Help page" do
  	before {visit help_path }
  	
	it { should have_selector('h1', text: 'Help') }
    it { has_title? full_title('Help') }
  end
  
  
  describe "About page" do
  	before { visit about_path }
  	
  	it { should have_selector('h1',	text: 'About Us') }
	it { has_title? full_title('About Us') }
  end
  
  describe "Contact page" do
  	before { visit contact_path }
  	
	it { should have_selector('h1',	text: 'Contact') }
	it { has_title? full_title('Contact') }
  end	
end
