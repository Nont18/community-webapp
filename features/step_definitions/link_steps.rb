Given('I am user and admin at the same time') do
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




When('I visit the land') do
  visit '/links'
  #pending # Write code here that turns the phrase above into concrete actions
end


Then('I should see the button which only for admin') do
  expect(page).to have_content("Only Admin")
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I click only admin button') do
  click_on 'Only Admin'
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('tha page directly through Admin Zone page') do
  expect(page).to have_content("Admin Zone")
  expect(page).to have_button('Destroy Post')
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see the list of post and user management') do
  expect(page).to have_content('Username')
  expect(page).to have_content('Name of Post')
  #pending # Write code here that turns the phrase above into concrete actions
end

Then ('I click list of user to see user who has registered') do
  click_on 'list of user'
  #pending # Write code here that turns the phrase above into concrete actions
end

And ('I can see list of them and number of users') do
  expect(page).to have_content('Total Users')
  #pending # Write code here that turns the phrase above into concrete actions
end

Then ('I can delete any user that I want to delete') do
  click_on 'Delete'
  #pending # Write code here that turns the phrase above into concrete actions
end



