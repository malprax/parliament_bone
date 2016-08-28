class AddFractionsToParliaments < ActiveRecord::Migration
  def change
    add_column :parliaments, :fraction_id, :string
    add_column :parliaments, :commision_id, :string
  end
end
