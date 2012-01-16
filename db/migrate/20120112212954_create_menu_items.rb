class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string  :name
      t.string  :link
      t.integer :order

      t.timestamps
    end
  end
end
