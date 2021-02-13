class ResultsController < ApplicationController
  def index
    # binding.pry
    @results = Result.all
  end

  def new
    @result = Result.new
  end

  def create
    @result = Result.new(result_params)
    if @result.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def result_params
    params.require(:result).permit(:first_length, :second_length, :first_weight, :second_weight, :area, :means, :text,:image).merge(user_id: current_user.id)
  end

end
