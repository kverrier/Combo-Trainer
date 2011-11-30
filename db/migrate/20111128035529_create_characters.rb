class CreateCharacters < ActiveRecord::Migration
  def up
    create_table :characters do |t|
      t.string :name

    end

    Character.create :name => "Akuma"
    Character.create :name => "Alex"
    Character.create :name => "Chun-Li"
    Character.create :name => "Dudley"
		Character.create :name => "Elena"
    Character.create :name => "Hugo"
    Character.create :name => "Ibuki"
    Character.create :name => "Ken"
    Character.create :name => "Makoto"
    Character.create :name => "Necro"
    Character.create :name => "Oro"
    Character.create :name => "Q"
    Character.create :name => "Remy"
    Character.create :name => "Ryu"
    Character.create :name => "Sean"
    Character.create :name => "Twelve"   
    Character.create :name => "Urien"
    Character.create :name => "Yang"
    Character.create :name => "Yun"   

  end

  def down
  	drop_table :characters
  end
end
