class CreateCombos < ActiveRecord::Migration
  def change
    create_table :combos do |t|
    	t.string :name
    	t.string :submitter
    	t.integer :character_id


    	t.timestamps
    end
  end
end
