class SalariesController < ApplicationController
  def new
    @salary = Salary.new
  end

  def create
    @salary = Salary.new(salary_params)
    @salary.monthly = (@salary.yearly / 12).round(2)
    @salary.daily = (@salary.monthly / 20).round(2)
    @salary.hourly = (@salary.daily / 7.5).round(2)

    render json: JSON.pretty_generate(@salary.as_json(:except => [:id, :created_at, :updated_at]))
  end

  private

  def salary_params
    params.require(:salary).permit(:yearly)
  end
end
