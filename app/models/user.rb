class User < ApplicationRecord
	validates :email, presence: true
  validates :password, :presence => true,
                   :confirmation => true,
                   :length => {:within => 6..40}
  validates :password_confirmation, presence: true
	acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::Sha512
	end
end
