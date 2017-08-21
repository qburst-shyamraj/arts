class PagesController < ApplicationController
	before_action :set_franchise, only: [:index]
	include ApplicationHelper
	def index
		@chits = @franchise.chits.all
		@members = @franchise.members
		@date = select_date
	end
	def select_date
		@chit = @chits.last
		if @chit
			case @franchise.chit_type_id
			when 1
				last_date = @chit.date
				end_date = last_date + 7
				@date = end_date.to_date
			when 2
				last_date = @chit.date
				end_date = last_date + 14
				@date = end_date.to_date
			when 3
				last_date = @chit.date
				end_date = last_date + 30
				@date = end_date.to_date
			when 4
				last_date = @chit.date
				end_date = last_date + 16
				(last_date..end_date).each do |date|
					if date.strftime("%d") == "05" || date.strftime("%d") == "20"
						@date = date.to_date
					end
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
