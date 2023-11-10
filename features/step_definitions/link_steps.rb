Given('There is a links page') do
    @link = FactoryBot.create :link
    #pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I visit the main link page') do
    s1 = FactoryBot.create :student, link: @link
    s2 = FactoryBot.create :student, link: @link
    #pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should see the list of students') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click comment') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('The page should show some of comment') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  