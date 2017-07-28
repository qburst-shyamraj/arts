class AddFranchiseIdToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :franchise_id, :string
    add_column :members, :integer, :string
  end
end
