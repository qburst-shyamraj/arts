class AddChitTypeIdToFranchises < ActiveRecord::Migration[5.0]
  def change
  	add_column :franchises, :chit_type_id, :integer
  end
end
