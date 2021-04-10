

require 'salary'
require 'employee'
require 'income'
# require ' day'
# require 'timecop'

RSpec.describe Salary do
  context "時薪制" do
    let(:employee) { Employee.new(false) }
    it "平日或休息日" do
      salary = Salary.new(30000, employee: employee)
      # day = Day.new
      # now = Time.now
      salary.add_w(hrs:4)
      # bike.rent(now)
      # bike.back(now + 60 * 60 * 3)
      # bike.times(180)
      expect(salary.money).to be 752
      #n/30/8 * (2*1.34 + 2*1.67)
      ##
    end

    it "假日" do
      salary = Salary.new(30000, employee: employee)
      salary.add_h(hrs:4)
      # bike = Bike.new(0, user: user)
      # now = Time.now
      # bike.rent(now)
      # bike.back(now + 60 * 60 * 6)
      # bike.times(360)
      expect(salary.money).to be 1040
    end

  end

  context '月薪' do
    let(:employee) { Employee.new(true) }
    it "平日" do
      salary = Salary.new(30000, employee: employee)
      income = Income.new
      salary.add_w(hrs:4)
      # bike = Bike.new(0, user: user)
      # now = Time.now
      # Timecop.freeze(now)
      # bike.rent(Time.now)
      # Timecop.travel(now + 60 * 60 * 0.5)
      # bike.back(Time.now)
      # bike.time(30)
      expect(salary.money).to be 752
    end
  
    it "假日" do
      salary = Salary.new(30000, employee: employee)
      salary.add_h(hrs:4)
      # bike = Bike.new(0, user: user)
      # now = Time.now
      # Timecop.freeze(now)
      # bike.rent(Time.now)
      # Timecop.travel(now + 60 * 60 * 2)
      # bike.back(Time.now)
      # now = Time.now
      # bike.rent(now)
      # bike.back(now + 60 * 60 * 2)
      expect(salary.money).to be 1000
    end

  end


end
