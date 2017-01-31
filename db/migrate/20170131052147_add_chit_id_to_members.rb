class AddChitIdToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :chit_id, :integer
  end
end
