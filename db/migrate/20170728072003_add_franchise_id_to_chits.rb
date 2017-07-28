class AddFranchiseIdToChits < ActiveRecord::Migration[5.0]
  def change
    add_column :chits, :franchise_id, :integer
  end
end
