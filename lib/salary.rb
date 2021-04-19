require 'employee'
require 'income'

class Salary
  
  def initialize(income, employee: nil)
    @income = income
    # @money = money
    @employee = employee
    # @begin = nil
    # @end = nil
  end

  def money
    @money = money
  end

  # def rent(time)
  #   @begin = time
  # end

  # def back(time)
  #   @end = time
  # end

  def add_w(hrs)
    #半小時計算
    case working_day
    when 0..2
      @money = calc_to_hr * hrs * 1.34
    when 2.5..8
      @money = (calc_to_hr * 2 * 1.34) + calc_to_hr * (hrs - 2) * 1.67
    else
      @money = (calc_to_hr * 2 * 1.34) + (calc_to_hr * 6 * 1.67) + calc_to_hr * (hrs - 8) * 1.67
    end
  end

  def add_h(hrs)
    
    if @employee.is_monthly?
      case weekend_m
      when 0..8
        @money = calc_to_hr * 8
      when 8.5..10
        @money = calc_to_hr * 8 + (calc_to_hr * (hrs-8) * 2.34
      else 
        @money = calc_to_hr * 8 + (calc_to_hr * (2) * 2.34 + calc_to_hr * (hrs-10) * 2.67
      end
    else
      case weekend_hr
      when 0..8
        @money = calc_to_hr * hrs * 2
      when 8.5..10
        @money = calc_to_hr * 8 * 2 + (calc_to_hr * (hrs-8) * 2.34
      else 
        @money = calc_to_hr * 8 * 2 + (calc_to_hr * (2) * 2.34 + calc_to_hr * (hrs-10) * 2.67
      end
    end      

  end

  # def money(hrs = nil)
  #   hrs = ((@end - @begin) / 60).to_i
  #   if @employee.is_monthly?
  #     time(hrs)
  #   else
  #     times(hrs)
  #   end
  #   @money
  # end


end