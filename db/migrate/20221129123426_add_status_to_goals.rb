class AddStatusToGoals < ActiveRecord::Migration[7.0]
  def change
    add_column :goals, :status, :boolean, default: false
  end
end
