class CreateChitTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :chit_types do |t|
      t.string :chit_type
      t.timestamps
    end
  end
end
