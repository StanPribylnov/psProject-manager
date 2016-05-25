class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.boolean :actual
      t.string :name
      t.text :description
      t.timestamps null: false
    end
  end
end
