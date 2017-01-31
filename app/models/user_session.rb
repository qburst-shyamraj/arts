class UserSession < Authlogic::Session::Base
	validate :email, presence: true
	validate :password, presence: true
end
