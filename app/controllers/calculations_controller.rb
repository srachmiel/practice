class CalculationsController < ApplicationController
  def home

  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
  	@interest = params[:interest_rate].to_f / 1000
  	@number = params[:number_of_payments].to_f
  	@value = params[:present_value].to_f
  	@payment = (@interest * @value) / (1 - ((1 + @interest)**(-1 * @number))).to_f
  end
end
