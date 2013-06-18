require 'spec_helper'
require 'cancan/matchers'

# note these tests are useless, only left in for when more complex user cases are around
describe User do
  it 'says its role is an admin if it is an admin' do
    admin = FactoryGirl.create :admin_user
    expect(admin.role).to eq 'admin'
    #expect(admin.admin?).to eq true
  end

  it 'says its role is not an admin if it isnt an admin' do
    admin = FactoryGirl.create :user
    expect(admin.role).not_to eq 'admin'
    #expect(admin.admin?).to eq false
  end
end