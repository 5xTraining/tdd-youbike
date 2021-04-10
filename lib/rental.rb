require "employee"

class Income
  def initialize (employee)
    @employee = employee
    @income = income
  end

  # def add(bike)
  #   bike.rent!
  #   @bike
  #   #驚嘆號表示要做某件事情
  #   #this rent is bike's rent, not rental'rent
  # end

  # def remove(bike)
  #   bike.return!
  # end

  def calc_to_hr
    # mis = bike.rental_duration_mins

    if @user.monthly?
      @calc_to_hr = (income / 30 / 8)
    else
      @calc_to_hr = income
    end

end
