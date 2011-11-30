class CreateComboItems < ActiveRecord::Migration
  def change
    create_table :combo_items do |t|
    	t.integer :combo_id
    	t.integer :move_id
    	t.integer :position

      t.timestamps
    end
  end
end
