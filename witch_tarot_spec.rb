# coding: Shift_JIS

require './witch_tarot.rb'

describe WitchTarot, "�E�B�b�`�E�^���[" do
	describe 'Witchtarot::name' do
		before do
			srand(0)
		end
		
		context '�����Ȃ��̏ꍇ' do
			it '1D6+1�����̖��O�𐶐�' do
				WitchTarot::name.should== 'MIIKRI'
			end
		end
		
		context '�������w��̏ꍇ' do
			it '�w�蕶�����̖��O�𐶐�' do
				WitchTarot::name(7).should== 'SEAUCCO'
			end
		end
	end
end
