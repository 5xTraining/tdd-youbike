require 'employee'

RSpec.describe Employee do
  context '月薪？' do
    it '月薪' do
      employee = Employee.new(true)
      # user.login?
      expect(employee.ans).to be true
    end

    # it "non-member" do
    #   user = User.new()
    #   user.login?(false)
    #   expect(user_check).to be false
    # end
  end

end
