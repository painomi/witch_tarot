# coding: Shift_JIS

require './witch_tarot.rb'

describe WitchTarot, "ウィッチ・タロー" do
	describe 'Witchtarot::name' do
		context '引数なしの場合' do
			it '1D6+1文字の名前を生成' do
				srand(0)
				WitchTarot::name.should== 'MIIKRI'
			end
		end
		
		context '文字数指定の場合' do
			it '指定文字数の名前を生成' do
				srand(0)
				WitchTarot::name(7).should== 'DELCISW'
			end
		end
	end
end
