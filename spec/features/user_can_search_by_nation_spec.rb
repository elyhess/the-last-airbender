require 'rails_helper'

RSpec.describe "As a visitor" do
	describe "When I search for a characters by nation," do
		it 'I see 25 results for that nation' do

			visit root_path

			select "Fire Nation", :from => "nation"

			click_button "Search For Members"

			expect(current_path).to eq(search_path)

			expect(page).to have_content("Displaying 25 results")
			expect(page).to have_content("Name: Afiko")
			expect(page).to have_content("Allies: Fire Nation")
			expect(page).to have_content("Enemies: Aang")
			expect(page).to have_content("Affiliation: Fire Nation")
		end
	end
end