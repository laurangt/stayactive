class RemoveStatutsFromGoals < ActiveRecord::Migration[7.0]
  def change
    remove_column :goals, :statuts, :boolean
  end
end
