Given("I am on the home pages") do
  visit root_path
end

When("I click on the {string} link") do |page_name|
  click_link page_name
end

Then("I should be on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end

Then("I should see the {string} field") do |string|
  page.should have_css('p#'+string)
end

Then("I fill in {string} with {string}") do |id, text|
  fill_in(id, :with => text)
end

When("I click on the {string} button") do |name|
  click_button name
end

Then("I should see the {string} field with {string}") do |name, text|
  expect(find_field(name).value).to eq text
end

When("I go to vote on my poll") do
  visit new_poll_vote_url(1)
end

When("I click on the {string} radio button") do |name|
  choose(name, option: "1")
end

Then("I should see {string}") do |vote|
  page.should have_content(vote)
end