# coding: Shift_JIS

require './witch_tarot.rb'

describe WitchTarot, "�E�B�b�`�E�^���[" do
	describe 'Witchtarot::name' do
		context '�����Ȃ��̏ꍇ' do
			it '1D6+1�����̖��O�𐶐�' do
				WitchTarot.should_receive(:rand).exactly(3).times.and_return(1)
				WitchTarot::name.should== 'SR'
			end
		end
		
		context '�������w��̏ꍇ' do
			it '�w�蕶�����̖��O�𐶐�' do
				WitchTarot.should_receive(:rand).exactly(7).times.and_return(0)
				WitchTarot::name(7).should== 'TTIFISO'
			end
		end
	end
end
