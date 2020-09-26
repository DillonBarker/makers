class CEO

  def make_company_efficient(coo = COO.new)
    coo.find_company_savings
  end

end


class COO

  def find_company_savings(hr = HR.new)
    sell_old_equipment
    reduce_entertainment_budget
    hr.reduce_payroll
  end

end

class HR

  def reduce_payroll(employeess)
    employee.fire if employee.performace < 7
  end

end
