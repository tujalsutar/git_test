class EmployeesController < ApplicationController
	def index
		@employee = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(employees_params)
		if @employee.save
			redirect_to @employee
		else
			render :new, status: :unprocesssble_entity
		end
	end


	def edit
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if@employee.update(employees_params)
			redirect_to @employee
		else
			render :edit, status: :unprocesssble_entity
		end
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy

		redirect_to root_path, status: :see_other
	end


	def search
	@query = params[:query]
	@employees = Employee.where("employee.first_name like ?", ["%#{@query}%"])
	 render :show
	end


	private
	def employees_params
		params.require(:employee).permit(:first_name, :last_name, :gender, :role, :mobile_no, :joining_date, :address, :city, :pincode, :image)
	end




end
