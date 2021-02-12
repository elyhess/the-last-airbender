class Character
	attr_reader :name,
	            :image,
	            :allies,
	            :enemies,
	            :affiliation

	def initialize(data)
		@name = data[:name]
		@image = data[:photoUrl]
		@allies = data[:allies].join(", ")
		@enemies = data[:enemies].join(", ")
		@affiliation = data[:affiliation]
	end

	def has_image?
		@image != nil
	end

end