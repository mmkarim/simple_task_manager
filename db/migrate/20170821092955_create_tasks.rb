class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks, force: true do |t|
      t.string :name, null: false
      t.string :description, null: false

      t.datetime :dateCreated, null: false
      t.datetime :dateUpdated, null: false

      # t.timestamps
    end
  end
end
