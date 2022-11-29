class RemoveStatusFromGoals < ActiveRecord::Migration[7.0]
  def change
    remove_column :goals, :status, :boolean
  end
end
