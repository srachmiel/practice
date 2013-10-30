class CalculationsController < ApplicationController
  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end
end
