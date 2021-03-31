require 'user'

RSpec.describe User do
  context '是否是會員' do
    it 'member' do
      user = User.new(true)
      user.login?
      expect(user.ans).to be true
    end

    # it "non-member" do
    #   user = User.new()
    #   user.login?(false)
    #   expect(user_check).to be false
    # end
  end

end
