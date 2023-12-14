# As a user,
# When I select "Tennessee" from the form,
# (Note: use the existing form)
# And click on "Find Parks",
# I see the total of parks found,
# And for each park I see:
# - full name of the park
# - description
# - direction info
# - standard hours for operation

require 'rails_helper'

RSpec.describe 'Parks viewing page' do 
  it 'get list of all parks in tennesse' do
    visit '/'
    select "Tennessee", :from => :state
    click_on "Find Parks"

    save_and_open_page
    expect(page).to have_content("Name: Appalachian National Scenic Trail")
    expect(page).to have_content("Description: The Appalachian Trail is a 2,190+ mile long public footpath that traverses the scenic, wooded, pastoral, wild, and culturally resonant lands of the Appalachian Mountains. Conceived in 1921, built by private citizens, and completed in 1937, today the trail is managed by the National Park Service, US Forest Service, Appalachian Trail Conservancy, numerous state agencies and thousands of volunteers.")
    expect(page).to have_content("Direction: Please use the following link to learn more about how to get here from various locations.")
    expect(page).to have_content("Hours: 9:00AM - 4:00PM")
    expect(page).to have_content("Total Parks: 15")
  end
end