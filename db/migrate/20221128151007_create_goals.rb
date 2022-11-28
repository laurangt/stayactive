class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.date :end_date
      t.boolean :statuts
      t.references :project, null:false, foreign_key: true

      t.timestamps
    end
  end
end
