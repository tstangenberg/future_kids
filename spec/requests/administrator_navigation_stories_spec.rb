require "requests/acceptance_helper"

feature "ADMINISTRATOR::NAVIGATION", %q{
  As a administrator
  I want to navigate to my views
  So that I can work with the app
} do

  background do
    @pw = 'welcome'
    @admin = create(:admin, password: @pw, password_confirmation: @pw)
    log_in(@admin)
  end

  scenario "should show administrator list" do
    click_link 'Administrator/in'
    page.status_code.should == 200
    page.should have_css('h2', text: 'Administratoren')
  end

  scenario "should show student list" do
    click_link 'Schüler/in'
    page.status_code.should == 200
    page.should have_css('h2', text: 'Schüler/innen')
    end

  scenario "should show teacher list" do
    click_link 'Lehrperson'
    page.status_code.should == 200
    page.should have_css('h2', text: 'Lehrpersonen')
  end

  scenario "should show mentor list" do
    click_link 'Mentor/in'
    page.status_code.should == 200
    page.should have_css('h2', text: 'Mentoren')
  end

  scenario "should show school boss list" do
    click_link 'SL/QUIMS-Verantwortliche/r'
    page.status_code.should == 200
    page.should have_css('h2', text: 'Schulleiter')
  end

  scenario "should show reminder list" do
    click_link 'Erinnerung'
    page.status_code.should == 200
    page.should have_css('h2', text: 'Erinnerungen')
  end

  scenario "should show tutorial list" do
    click_link 'Anleitungen'
    page.status_code.should == 200
    page.should have_css('h2', text: 'Dokumente und Anleitungen')
  end

  scenario "should show school list" do
    click_link 'Schule'
    page.status_code.should == 200
    page.should have_css('h2', text: 'Schulhäuser')
  end


end

