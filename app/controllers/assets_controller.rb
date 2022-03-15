class AssetsController < ApplicationController
	def new
		@assets = Asests.new
	end
	def create
		@employee = Employee.find(assets_params)
		@asset = @employee.assets.create(assets_params)
		redirect_to employee_path(@employee)
	end


	private
	def assets_params
		params.require(:assets).permit(:product_name, :company_name,:specification,:serial_number, :employee_id)
	end
end
