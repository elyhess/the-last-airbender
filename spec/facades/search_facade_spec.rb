require 'rails_helper'

describe SearchFacade do
	describe "::characters_by_nation" do
		it "returns character data" do
			search = SearchFacade.characters_by_nation("fire+nation")
			expect(search).to be_a(Array)
			expect(search.first).to be_a(Character)
			expect(search.count).to eq(97)
		end
	end
end