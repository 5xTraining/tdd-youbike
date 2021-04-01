require 'demo_bike'
require 'timecop'
require 'rental'

RSpec.describe Bike do
  context "非會員使用" do
    it "in 4hrs" do
      #arrange
      user = User.new
      bike = Bike.new
      rental = Rental.new(user)

      #act
      p bike #確認租借前的時間
      rental.add(bike)
      timecop.travel(65*60) #時間前進65分鐘(模擬時間)
      rental.remove(bike)
      p bike  #確認租借前的時間

      #assent
      expect(rental.charge).to be 30
      #n*2*10
    end
  end
end