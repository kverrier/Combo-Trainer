class Combo < ActiveRecord::Base
	  attr_accessible :name, :submitter

	  belongs_to :character
	  has_many :combo_items
	  has_many :moves, :through => :combo_items

	  validates :name, :presence => true, :length => { :maximum => 16 }
  	validates :submitter, :presence => true, :length => { :maximum => 16 }

  	def next_moves
	  	moves = last_move ? character.moves.keep_if{|m| last_move.combos_into? m } : character.moves
  	end

  	def start_ups
  		startups_list = combo_items[0...-1].map{|item| item.busy_time}
		end

		def connections
			connections_list = combo_items[0...-1].map{|item| item.connection_time}
		end
  	
  	def last_move
  		last_move = combo_items.last ? combo_items.last.move : nil
  	end
  	
end
