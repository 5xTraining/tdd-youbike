require 'employ'

RSpec.describe Employ do
  context '是否是會員' do
    it 'member' do
      employ = Employ.new(true)
      employ.is_monthly?
      expect(employ.ans).to be true
    end

  end

end
