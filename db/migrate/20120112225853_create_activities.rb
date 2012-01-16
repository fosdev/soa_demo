class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :purpose
      t.text :footnotes
      t.integer :task_id
      t.integer :visit_id

      t.timestamps
    end
  end
end
