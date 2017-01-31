module ApplicationHelper
	def send_notification(member)
		@twilio_number = "+17604886429"
		account_sid = "ACf6a85dfb54bb7e820879392f7e23542c"
		auth_token = "9a5ea4d8a1d303da43c6276f498af264"
		@client = Twilio::REST::Client.new account_sid, auth_token
		
		reminder = "Hi #{member.name}, you have been added as a member in prism art club chits."
		message = @client.account.messages.create(
  			:from => @twilio_number,
  			:to => "+91#{member.phone}",
  			:body => reminder,
			)
		puts message.to
	end
	def send_chit_details(chit)
		@twilio_number = "+17604886429"
		account_sid = "ACf6a85dfb54bb7e820879392f7e23542c"
		auth_token = "9a5ea4d8a1d303da43c6276f498af264"
		@client = Twilio::REST::Client.new account_sid, auth_token
		@members = Member.all
		@members.each do |member|
			reminder = "Hi #{member.name}, the details are."
			message = @client.account.messages.create(
					:from => @twilio_number,
					:to => "+91#{member.phone}",
					:body => reminder,
				)
			puts message.to
		end
	end

end
