# 會員：
# 前 30 分鐘 5 元
# 超過 30 分鐘，但於 4 小時內還車，費率為每 30 分鐘 10 元。
# 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。
# 超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價。
# 非會員（單次租車）：
# 4 小時內，費率為每 30 分鐘 10 元。
# 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。

# Ｑ：小時＆分鐘的輸入方式怎麼計算？

require 'bike1'
require 'user'
require 'timecop'

RSpec.describe Bike do
  context "非會員使用" do
    it "in 4hrs" do
      bike = Bike.new(0)
      bike.times(180)
      expect(bike.fee).to be 60
      #n*2*10
    end

    it "4hrs - 8hrs" do
      bike = Bike.new(0)
      bike.times(360)
      expect(bike.fee).to be 160
      #4*2*10+(n-4)*2*20
    end

    it "over 8hrs" do
      bike = Bike.new(0)
      bike.times(540)
      expect(bike.fee).to be 320
      #80+160+(n-8)*2*40
    end
  end

  context '會員使用' do
    it "in 30mins" do
      bike = Bike.new(0)
      bike.time(30)
      expect(bike.fee).to be 5
    end
  
    it "30mins 到 4hrs" do
      bike = Bike.new(0)
      bike.time(120)
      expect(bike.fee).to be 40
      #2hrs=>4*10
    end

    it "4hrs - 8hrs" do
      bike = Bike.new(0)
      bike.time(300)      
      expect(bike.fee).to be 120
      #4*2*10+2*20
    end

    it "8hrs up" do
      bike = Bike.new(0)
      bike.time(540)
      expect(bike.fee).to be 320
      #4*2*10+4*2*20+2*20
    end
  

  

  end


end
