require 'spec_helper'

describe Principal do
  it 'has a valid factory' do
    principal = Factory.build(:principal)
    principal.should be_valid
    principal.save!
  end
end
