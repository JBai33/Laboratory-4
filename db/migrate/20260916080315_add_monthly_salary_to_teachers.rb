class AddMonthlySalaryToTeachers < ActiveRecord::Migration[8.1]
  def change
    add_column :teachers, :monthly_salary, :float
  end
end
