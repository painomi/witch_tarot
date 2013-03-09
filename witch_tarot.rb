# coding: Shift_JIS

class WitchTarot
	Deck= [
		'THE TRICKSTER',
		'THE STAR',
		'THE PRINCESS',
		'THE STAFF',
		'H\'YUKIRIA',
		'THE LOVERS',
		'BLOOD',
		'THE SUN',
		'CAT',
		'THE FAIRY',
		'THE WIND',
		'THE POISON',
		'THE DREAM',
		'THE NIGHTMARE',
		'THE BALANCE',
		'THE MOON',
		'THE GEM',
		'SWORD',
		'STORM',
		'DRAGON',
		'THE DEEP SPACE',
		'THE SEA',
		'THE WITCH',
		'SILVER',
		'THE RIVER',
		'GOLD',
		'THE SKY',
		'THE WARRIOR',
		'THE FOREIGNER',
	]
	
	def initialize
		@deck= Deck
	end
	
	def draw
		s= @deck.size- 1
		@deck.delete_at(rand(0..s))
	end
	
	def self.name(size= nil)
		size= rand(1..6)+1 unless size
		tarot= WitchTarot.new
		name= ''
		size.times do |i|
			t= tarot.draw
			t= t.gsub('THE','').gsub(/\W/,'')
			s= t.size
			ii= i % (s * 2 - 1)
			ii= s * 2 - ii - 2  if ii >= s
			name+= t[ii]
		end
		name
	end
end
