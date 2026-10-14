class AddCountsToDepartments < ActiveRecord::Migration[8.1]
  def change
    add_column :departments, :students_count, :integer unless column_exists?(:departments, :students_count)
    add_column :departments, :teachers_count, :integer unless column_exists?(:departments, :teachers_count)
    add_column :departments, :laboratories_count, :integer unless column_exists?(:departments, :laboratories_count)
  end
end
