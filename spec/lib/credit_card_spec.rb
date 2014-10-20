require 'rspec'
require_relative '../../lib/credit_card'

describe CreditCard do
  describe '#balance' do
    it 'returns 0.0 for new credit cards' do
      expect(subject.balance).to eq(0.0)
    end
  end

  describe '#charge(amount)' do
    it 'increases the balance by the amount' do
      subject.charge(5.25)
      expect(subject.balance).to eq(5.25)
    end
  end

  describe '#credit(amount)' do
    it 'decreases the balance by the amount' do
      subject.credit(5.25)
      expect(subject.balance).to eq(-5.25)
    end
  end
end
