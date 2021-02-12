class SearchFacade
	class << self
		def characters_by_nation(nation)
			characters_data = AvatarService.get_results(nation)
			create_characters(characters_data)
		end

		private
		def create_characters(characters)
			characters.map do |character|
				Character.new(character)
			end
		end
	end
end