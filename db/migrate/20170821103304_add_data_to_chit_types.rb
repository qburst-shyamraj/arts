class AddDataToChitTypes < ActiveRecord::Migration[5.0]
  def change
  	ChitType.create(chit_type: "Weekly")
  	ChitType.create(chit_type: "every two weeks")
  	ChitType.create(chit_type: "monthly")
  	ChitType.create(chit_type: "custom dates")
  end
end
