require 'user'

class Bike
  
  def initialize(fee)
    @fee = fee
    
  end

  

  def times(mins)
    @fee = (mins/30) * 10 if mins <=240
    #~4hrs
    @fee = (mins-240)/30 * 20 + 80 if mins >240 and  mins <= 480
    #4hrs~8hrs
    @fee = (mins-480)/30  * 40 + 80 + 160 if mins > 480
  end

  def time(mins)
    @fee = 5 if mins <= 30
    #不滿30mins
    @fee = (mins/30) * 10 if mins >30 and mins <= 240
    #30mins~4hrs
    @fee = (mins-240)/30 * 20 + 80 if mins >240 and  mins <= 480
    #4hrs~8hrs
    @fee = (mins-480)/30  * 40 + 80 + 160 if mins > 480
  end

  def fee
    @fee
  end


end