class Api::V1::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.new(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email]
                            )

    @employee.save
    # take to the show page of the new user
    render :show
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    @employee.assign_attributes(
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email]
                                )
    employee.save
    render :show

  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render json: {message: "employee deleted"}, code: 200
  end
end
