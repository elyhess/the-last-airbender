class SearchController < ApplicationController
	def index
		nation = params[:nation].gsub('_', '+')
		@characters = SearchFacade.characters_by_nation(nation)
	end
end