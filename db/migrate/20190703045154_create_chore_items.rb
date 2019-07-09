class CreateChoreItems < ActiveRecord::Migration[5.2]
  def change
    create_table :chore_items do |t|
      t.string :name, limit: 50
      t.text :details
      t.string :assign_to
      t.date :due_date
      t.date :completed_at
      t.boolean :done

      t.timestamps
    end
  end
end
