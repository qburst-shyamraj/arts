class Chit < ApplicationRecord
	validates :date, presence: true
	validates :person_called, presence: true
	validates :bar, presence: true
	validates :amount_recieved, presence: true
	belongs_to :member
end
