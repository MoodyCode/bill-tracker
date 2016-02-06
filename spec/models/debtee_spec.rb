require 'rails_helper'

RSpec.describe Debtee, :type => :model do
  it 'creates a new debtee' do
    debtee = Debtee.new(:debtee => 'Bank', :website => 'http://www.bank.com', :username => 'dmmoody', :password => 'password')
    debtee.save
    expect(Debtee.first).to eq(debtee)
  end
end

describe Debtee do
  it { should validate_presence_of :debtee }
  it { should validate_presence_of :website }
  it { should validate_presence_of :username }
  it { should validate_presence_of :password }
end
