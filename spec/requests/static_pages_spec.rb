require 'spec_helper'

describe "StaticPages" do
	subject { page }
	let(:p) { should have_selector('p') }
  describe "home page" do
    before { visit root_path}
    it { should have_selector('h1', text: "Welcome to divine's Blog")}
    it { should have_link('about')}
    p
  end
  describe " about page"  do
  		before { visit about_path }

  		it { should have_selector('h1', text: "Wana Know more about divine's Blog")}
  		it { should have_selector('text')}
  		it { should have_selector('p')}
  		it { should have_link('home')}
  		p
  end

end
