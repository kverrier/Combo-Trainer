class CreateMoves < ActiveRecord::Migration
  def up
    create_table :moves do |t|
    	t.integer :character_id
    	t.string  :name
    	t.integer :startUp
    	t.integer :hit
    	t.integer :recovery
    	t.integer :hitAdv
    	t.boolean :isSpecialCancelable
    	t.boolean :isSuperCancelable
    	t.string  :move_type

    	t.timestamps
    end


 		bad_moves = ['-', 'Universal Overhead', 'Taunt']

    require 'csv'
    Dir['lib/assets/frame_data/normals/*.csv'].each do |f|
			CSV.open(f, 'r').each do |row|
				unless (bad_moves.include? row[0]) or /.*Jumping.*/ =~ row[0] or  /.*Air.*/ =~ row[0] or /.*Far.*/ =~ row[0] or /.*Throw.*/ =~ row[0] 
		  		Move.create(:character_id => File.basename(f, '.csv'),
		  								:name 		=> row[0], 
			  							:startUp 	=> row[1],
			  							:hit 			=> row[2],
			  							:recovery => row[3],
			  							:hitAdv 	=> row[4],
			  							:move_type 		=> 'normal',
			  							:isSpecialCancelable => (row[11] == 'O'),
			  							:isSuperCancelable   => (row[12] == 'O'))
			  end
		  end
		end

		Dir['lib/assets/frame_data/specials/*.csv'].each do |f|
			CSV.open(f, 'r').each do |row|
				unless (bad_moves.include? row[0]) or /.*Jumping.*/ =~ row[0] or  /.*Air.*/ =~ row[0] or /.*Far.*/ =~ row[0] or /.*Throw.*/ =~ row[0] 
		  		Move.create(:character_id => File.basename(f, '.csv'),
		  								:name 		=> row[0], 
			  							:startUp 	=> row[2],
			  							:hit 			=> row[3],
			  							:recovery => row[4],
			  							:hitAdv 	=> 0,
			  							:move_type 		=> 'special',
			  							:isSpecialCancelable => true,
			  							:isSuperCancelable   => (row[9] == 'O'))
			  end									
		  end
		end

		Dir['lib/assets/frame_data/supers/*.csv'].each do |f|
			CSV.open(f, 'r').each do |row|
				unless (bad_moves.include? row[0]) or /.*Jumping.*/ =~ row[0] or  /.*Air.*/ =~ row[0] or /.*Far.*/ =~ row[0] or /.*Throw.*/ =~ row[0] 
		  		Move.create(:character_id => File.basename(f, '.csv'),
		  								:name 		=> row[0], 
			  							:startUp 	=> row[2],
			  							:hit 			=> row[3],
			  							:recovery => row[4],
			  							:hitAdv 	=> 0,
			  							:move_type 		=> 'super',
			  							:isSuperCancelable   => row[9] == 'O')
			  end

		  end
		end
	end
	  
	def down
	  	drop_table :characters
	end

end