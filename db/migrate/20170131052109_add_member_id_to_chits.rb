class AddMemberIdToChits < ActiveRecord::Migration[5.0]
  def change
    add_column :chits, :member_id, :integer
  end
end
