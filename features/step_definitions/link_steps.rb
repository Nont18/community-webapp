Given('I am user') do
  @user =FactoryBot.create :user
  #pending # Write code here that turns the phrase above into concrete actions
end


Given('There is a post') do
  @link = FactoryBot.create :link
  #pending # Write code here that turns the phrase above into concrete actions
end

Given('post have some comments') do
  c1 = FactoryBot.create :student, link: @link
  #pending # Write code here that turns the phrase above into concrete actions
end

Given('I am logged in to access website') do
  login_as(@user, :scope => :user)
  #pending # Write code here that turns the phrase above into concrete actions
end

When('I visit the landing page') do
  visit '/links'
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see the list of emergency') do
  expect(page).to have_content(@link.name)
  expect(page).to have_content(@link.url)
  expect(page).to have_content(@link.ruch_emergency)
  expect(page).to have_content(@link.type_emergency)
  #pending # Write code here that turns the phrase above into concrete actions
end

When('I click comment to see the comment') do
  click_link('Comment', :href => link_path(@link))
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('The page should show some of comment on that post') do
  @link.students.each do |student|
    expect(page).to have_content(@student)
  end
  #pending # Write code here that turns the phrase above into concrete actions
end





