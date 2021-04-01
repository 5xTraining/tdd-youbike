class Bike
  def rent!
    @rent_at = Time.now
    @return_at = nil
    #前一個人還車時間要歸零
  end

  def return!
    @return_at = Time.now
  end

  def returned?  #判斷是否還車
    @return_at == nil
  end

  def rental_duration_mins
    if returned?
      p (@return_at - @return_at).to_i / 60.0
    else
      (Time.now - @return_at).to_i / 60.0
      #未還，使用現在時間
    end

  end

  private
  def returned?
    @return_at != nil?
  end



end
