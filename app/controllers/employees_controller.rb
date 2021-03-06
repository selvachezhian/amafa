class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.order(:first_name).page params[:page]
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
    @associated_assets = @employee.nsm_assets
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def assign_asset
    EmployeeAsset.transaction do
      EmployeeAsset.create(employee_id: params[:employee_id], nsm_asset_id: params[:asset_id])
      nsm_asset = NsmAsset.find(params[:asset_id])
      nsm_asset.update_attribute(:assigned, true)
    end
    render text: 'success'
  end

  def remove_asset
    EmployeeAsset.transaction do
      employee = Employee.find(params[:employee_id])
      assigned_asset = employee.employee_assets.by_asset(params[:asset_id]).first
      asset = NsmAsset.find(params[:asset_id])
      assigned_asset.delete
      asset.update_attribute(:assigned, false)
    end
    render text: 'success'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :email, :user_name, :joining_date, :relieving_date, :emp_id, :citrix_id, :project, :manager, :admin_access, :citrix_access, :department_id, :document_signed, :beachhead_computrace, :active)
    end
end
