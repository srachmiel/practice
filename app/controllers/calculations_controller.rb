class CalculationsController < ApplicationController
  def sq
    @ze_number = params[:zebra]
    @ze_answer = @ze_number.to_f * @ze_number.to_f
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end
end
