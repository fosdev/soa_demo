class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :name
      t.string :description
      t.integer :day

      t.timestamps
    end
  end
end
