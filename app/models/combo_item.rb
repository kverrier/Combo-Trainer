class ComboItem < ActiveRecord::Base
  belongs_to :combo
  belongs_to :move

  def next_move
    if position < combo.combo_items.length - 1
      combo.combo_items[position+1].move
    else
      nil
    end
  end

  def being_canceled?
    being_canceled = next_move ? !next_move.isNormal : false
  end

  def busy_time
    time = being_canceled? ? move.startUp + move.hit - 1 : move.startUp + move.hit + move.recovery - 1
  end

  def connection_time
    time = being_canceled? ? move.recovery : move.hitAdv
  end
end
