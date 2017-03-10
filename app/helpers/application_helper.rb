module ApplicationHelper
	def send_notification(member)
		@twilio_number = "+17604886429"
		account_sid = "AC9d081f446371d9982105c909123f2c2f"
		auth_token = "24c069503e859f7a441d6d8085d4acc2"
		@client = Twilio::REST::Client.new account_sid, auth_token
		
		reminder = "Hi #{member.name}, you have been added as a member in prism art and sports club kurry."
		message = @client.account.messages.create(
  			:from => @twilio_number,
  			:to => "+91#{member.phone}",
  			:body => reminder,
			)
		puts message.to
	end
	def send_chit_details(chit)
		@twilio_number = "+17604886429"
		account_sid = "AC9d081f446371d9982105c909123f2c2f"
		auth_token = "24c069503e859f7a441d6d8085d4acc2"
		@client = Twilio::REST::Client.new account_sid, auth_token
		@members = Member.all
		@members.each do |member|
			reminder = "Hi #{member.name}, Prism club kurry details - date: #{chit.date}, bar: #{chit.bar}, vilichath: #{chit.person_called}."
			message = @client.account.messages.create(
					:from => @twilio_number,
					:to => "+91#{member.phone}",
					:body => reminder,
				)
			puts message.to
		end
	end
	def send_message_all(date)
		@twilio_number = "+17604886429"
		account_sid = "AC9d081f446371d9982105c909123f2c2f"
		auth_token = "24c069503e859f7a441d6d8085d4acc2"
		@client = Twilio::REST::Client.new account_sid, auth_token
		@members = Member.all
		@members.each do |member|
			reminder = "Hi #{member.name}, there is kurry(Prism club) at #{date}. All are requested to attend it."
			message = @client.account.messages.create(
					:from => @twilio_number,
					:to => "+91#{member.phone}",
					:body => reminder,
				)
			puts message.to
		end
	end

end
