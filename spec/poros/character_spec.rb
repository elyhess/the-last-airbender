require "rails_helper"

RSpec.describe Character do
	it "exists" do
		character = Character.new({
			                          name:        "some_name",
			                          allies:      ["ali1", "ali2"],
			                          enemies:     ["ene1", "ene2"],
			                          affiliation: 'some affiliation'
		                          })

		expect(character).to be_an_instance_of(Character)
	end

	it 'has attributes' do
		character = Character.new({
			                          name:        "some_name",
			                          allies:      ["ali1", "ali2"],
			                          enemies:     ["ene1", "ene2"],
			                          affiliation: 'some affiliation'
		                          })

		expect(character.name).to eq("some_name")
		expect(character.display_allies).to eq("ali1, ali2")
		expect(character.display_enemies).to eq("ene1, ene2")
		expect(character.affiliation).to eq("some affiliation")
	end

	it 'has image' do
		character = Character.new({
			                          name:        "some_name",
			                          allies:      ["ali1", "ali2"],
			                          enemies:     ["ene1", "ene2"],
			                          affiliation: 'some affiliation'
		                          })

		expect(character.has_image?).to eq(false)
	end

	it 'can display if there are enemies or not' do
		character = Character.new({
			                          name:        "some_name",
			                          allies:      ["ali1", "ali2"],
			                          enemies:     [],
			                          affiliation: 'some affiliation'
		                          })

		expect(character.display_enemies).to eq("None.")
	end

	it 'can display if there are allies or not' do
		character = Character.new({
			                          name:        "some_name",
			                          allies:      [""],
			                          enemies:     ["ene1", "ene2"],
			                          affiliation: 'some affiliation'
		                          })

		expect(character.display_allies).to eq("None.")
	end
end