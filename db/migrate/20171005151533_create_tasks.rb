class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :list
      t.integer :user_id

      t.timestamps
    end
  end
end
