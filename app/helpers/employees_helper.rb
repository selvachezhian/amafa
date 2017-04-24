module EmployeesHelper
  def link_to_employee(employee, display_name = 'first_name')
    link_to employee.send(display_name), employee_path(employee), {}
  end
end
