# coding: Shift_JIS

require './witch_tarot.rb'

describe WitchTarot, "�E�B�b�`�E�^���[" do
	describe 'Witchtarot::name' do
		context '�����Ȃ��̏ꍇ' do
			it '1D6+1�����̖��O�𐶐�' do
				srand(0)
				WitchTarot::name.should== 'MIIKRI'
			end
		end
		
		context '�������w��̏ꍇ' do
			it '�w�蕶�����̖��O�𐶐�' do
				srand(0)
				WitchTarot::name(7).should== 'DELCISW'
			end
		end
	end
end
