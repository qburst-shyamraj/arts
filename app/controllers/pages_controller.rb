class PagesController < ApplicationController
	def index
		@members = Member.all
		@chits = Chit.all
	end
end
