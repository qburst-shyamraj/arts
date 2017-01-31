class CreateChits < ActiveRecord::Migration[5.0]
  def change
    create_table :chits do |t|
      t.date :date
      t.integer :amount_recieved
      t.integer :balance_amount
      t.string :person_called
      t.integer :bar

      t.timestamps
    end
  end
end
