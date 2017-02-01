class PagesController < ApplicationController
	include ApplicationHelper
	def index
		@members = Member.all
		@chits = Chit.all
		@date = select_date
	end
	def select_date
		@chit = Chit.last
		if @chit
			last_date = @chit.date
			end_date = last_date + 16
			(last_date..end_date).each do |date|
				if date.strftime("%d") == "05" || date.strftime("%d") == "20"
					@date = date.to_date
				end
			end
			@date
		end
	end
	def messages
		@date = select_date
		send_message_all(@date)
		redirect_to pages_path
	end
end
