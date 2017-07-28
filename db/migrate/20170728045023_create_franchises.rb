class CreateFranchises < ActiveRecord::Migration[5.0]
  def change
    create_table :franchises do |t|
      t.string :title
      t.string :string
      t.decimal :amount
      t.string :date
      t.string :date
      t.string :person
      t.string :integer
      t.string :type
      t.string :string

      t.timestamps
    end
  end
end
