class CalculationsController < ApplicationController
  def home
  end

  def sq
    @ze_number = params[:zebra]
    @ze_answer = @ze_number.to_f * @ze_number.to_f
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    rate = params[:interest_rate].to_i / 100.0 / 12
    nper = params[:number_of_payments].to_i
    pv = params[:present_value].to_i

    @payment = (rate*pv)/(1 - (1 + rate)**(-nper))
  end
end
