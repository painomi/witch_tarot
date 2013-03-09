# coding: Shift_JIS

require './witch_tarot.rb'

describe WitchTarot, "ウィッチ・タロー" do
	describe 'Witchtarot::name' do
		context '引数なしの場合' do
			it '1D6+1文字の名前を生成' do
				WitchTarot.should_receive(:rand).exactly(3).times.and_return(1)
				WitchTarot::name.should== 'SR'
			end
		end
		
		context '文字数指定の場合' do
			it '指定文字数の名前を生成' do
				WitchTarot.should_receive(:rand).exactly(7).times.and_return(0)
				WitchTarot::name(7).should== 'TTIFISO'
			end
		end
	end
end
