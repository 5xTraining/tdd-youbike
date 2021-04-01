class Rental
  def initialize (user)
    @user = user
  end

  def add(bike)
    bike.rent!
    @bike
    #驚嘆號表示要做某件事情
    #this rent is bike's rent, not rental'rent
  end

  def remove(bike)
    bike.return!
  end

  def charge
    mis = bike.rental_duration_mins

    if @user.member?

    else
      # 4hrs
      case mins
      when 0..240
        (mins / 30).ceil * 10
      else
        80 + ((mins - 240) /30 ).ceil * 20
      end

    end


    

  end

end
