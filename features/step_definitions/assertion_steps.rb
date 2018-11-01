Given("I am on the dashboard page") do
    visit root_path
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I click the {string} button") do |button|
    click_button button
end