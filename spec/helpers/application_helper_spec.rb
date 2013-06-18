require 'spec_helper'

describe ApplicationHelper do
  describe '#bootstrap_class_for' do
    it 'should convert notice to info' do
      expect( helper.bootstrap_class_for(:notice)).to eq 'alert-info'
    end

    it 'should convert alert into block' do
      expect( helper.bootstrap_class_for(:alert)).to eq 'alert-block'
    end

    it 'should forward the rest of the types' do
      expect( helper.bootstrap_class_for(:error)).to eq 'alert-error'
    end
  end

  describe '#nav_class' do
    before do
      helper.stub!(:action_name).and_return 'index'
      helper.stub!(:controller_name).and_return 'photons'
    end

    context 'when we are passing both controller and action' do
      it 'should return active when active route and action is passed' do
        expect( helper.nav_class( 'photons', 'index')).to eq 'active'
      end

      it 'should not eq active when active route and action is not passed' do
        expect( helper.nav_class( 'photons', 'everything')).not_to eq 'active'
      end

      it 'should not eq active when in-active controller and active action is passed' do
        expect( helper.nav_class( 'not_photons', 'index')).not_to eq 'active'
      end
    end

    context 'when we are only passing controller' do
      it 'should return active when active controller is passed' do
       expect( helper.nav_class 'photons').to eq 'active'
      end

      it 'should not return active when inactive controller is passed' do
        expect( helper.nav_class 'not_photons').not_to eq 'active'
      end
    end
  end
end
