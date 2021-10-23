class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name, limit: 50
      t.text :comment
      t.date :due
      t.boolean :done
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
