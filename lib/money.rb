require 'user'

class Bike
  
  def initialize(fee, user: nil)
    @fee = fee
    @user = user
    @begin = nil
    @end = nil
  end

  def rent(time)
    @begin = time
  end

  def back(time)
    @end = time
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
    # p @fee
    @fee = (mins/30) * 10 if mins >30 and mins <= 240
    # p @fee
    #30mins~4hrs
    @fee = (mins-240)/30 * 20 + 80 if mins >240 and  mins <= 480
    # p @fee
    #4hrs~8hrs
    @fee = (mins-480)/30  * 40 + 80 + 160 if mins > 480
    # p @fee
  end

  def fee(mins = nil)
    mins = ((@end - @begin) / 60).to_i
    if @user.login?
      time(mins)
    else
      times(mins)
    end
    @fee
  end


end