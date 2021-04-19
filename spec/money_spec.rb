require 'money'
require 'employ'


RSpec.describe Money do
  context "平日與休息日" do
    let(:user) { User.new(true) }) }
    it "in 4hrs" do
      bike = Bike.new(0, user: user)
      now = Time.now
      bike.rent(now)
      bike.back(now + 60 * 60 * 3)
      # bike.times(180)
      expect(bike.fee).to be 60
      #n*2*10
    end

    it "4hrs - 8hrs" do
      bike = Bike.new(0, user: user)
      now = Time.now
      bike.rent(now)
      bike.back(now + 60 * 60 * 6)
      # bike.times(360)
      expect(bike.fee).to be 160
      #4*2*10+(n-4)*2*20
    end

    it "over 8hrs" do
      bike = Bike.new(0, user: user)
      now = Time.now
      bike.rent(now)
      bike.back(now + 60 * 60 * 9)
      # bike.times(540)
      expect(bike.fee).to be 320
      #80+160+(n-8)*2*40
    end
  end

  context '假日' do
    let(:user) { User.new(true) }
    it "in 30mins" do
      bike = Bike.new(0, user: user)
      now = Time.now
      Timecop.freeze(now)
      bike.rent(Time.now)
      Timecop.travel(now + 60 * 60 * 0.5)
      bike.back(Time.now)
      # bike.time(30)
      expect(bike.fee).to be 5
    end
  
    it "30mins 到 4hrs" do
      bike = Bike.new(0, user: user)
      now = Time.now
      Timecop.freeze(now)
      bike.rent(Time.now)
      Timecop.travel(now + 60 * 60 * 2)
      bike.back(Time.now)
      # now = Time.now
      # bike.rent(now)
      # bike.back(now + 60 * 60 * 2)
      expect(bike.fee).to be 40
      #2hrs=>4*10
    end

    it "4hrs - 8hrs" do
      bike = Bike.new(0, user: user)
      now = Time.now
      Timecop.freeze(now)
      bike.rent(Time.now)
      Timecop.travel(now + 60 * 60 * 5)
      bike.back(Time.now)      
      expect(bike.fee).to be 120
      #4*2*10+2*20
    end

    it "8hrs up" do
      bike = Bike.new(0, user: user)
      now = Time.now
      Timecop.freeze(now)
      bike.rent(Time.now)
      Timecop.travel(now + 60 * 60 * 9)
      bike.back(Time.now)
      # bike.time(540)
      expect(bike.fee).to be 320
      #4*2*10+4*2*20+2*20
    end
  

  

  end


end
