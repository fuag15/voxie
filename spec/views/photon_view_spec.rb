require 'spec_helper'

describe 'photons/index' do
  before do
    render
  end

  it 'displays the index view' do
    expect(view).to render_template('index')
  end
end