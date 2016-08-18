class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def create
    @employee = Employee.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    birth_date: params[:birth_date],
    ssn: params[:ssn]
    )
    render 'show'
  end

end
